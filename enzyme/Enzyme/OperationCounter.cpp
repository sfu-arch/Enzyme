//===- InstruMem.cpp ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements an LLVM memory operation instrumentation pass.
//
//===----------------------------------------------------------------------===//

#include "OperationCounter.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/IR/IRBuilder.h"

#include "Utils.h"

using namespace instrumem;

OPCounterPass::OPCounterPass() : FunctionPass(ID) {} // OPCounterPass

bool OPCounterPass::runOnFunction(Function &f) {
  std::map<StringRef, int> loop_id_map;
  llvm::DominatorTree DT = llvm::DominatorTree();
  DT.recalculate(f);
  auto loopInfo = new llvm::LoopInfoBase<llvm::BasicBlock, llvm::Loop>();
  loopInfo->releaseMemory();
  loopInfo->analyze(DT);
  int index = 0;
  for (auto loop : loopInfo->getLoopsInPreorder()) {
    for (auto block : loop->getBlocks())
      loop_id_map[block->getName()] = index;
    index++;
  }
  errs() << "Operation Counter analysis\n";

  std::vector<Instruction *> insts;
  for (auto &BB : f) {

    for (auto &I : BB) {
      if (loop_id_map.count(BB.getName()))
        I.setMetadata(
            "LoopId",
            MDNode::get(
                I.getContext(),
                MDString::get(I.getContext(),
                              std::to_string(loop_id_map[BB.getName()]))));
      insts.push_back(&I);
    }
  }

  auto &I = *f.getBasicBlockList().begin()->begin();
  Int32Ty = Type::getInt32Ty(f.getContext());
  auto zero = ConstantInt::get(Type::getInt32Ty(I.getContext()), 0);
  forward_op = new AllocaInst(Int32Ty, 0, "forward_op", &I);
  new StoreInst(zero, forward_op, false, &I);

  reverse_op = new AllocaInst(Int32Ty, 0, "reverse_op", &I);
  new StoreInst(zero, reverse_op, false, &I);

  forward_mem_op = new AllocaInst(Int32Ty, 0, "forward_mem", &I);
  new StoreInst(zero, forward_mem_op, false, &I);

  reverse_mem_op = new AllocaInst(Int32Ty, 0, "reverse_mem", &I);
  new StoreInst(zero, reverse_mem_op, false, &I);

  for (auto &i : insts)
    visit(i);

  for (auto &arg : f.args()) {
    for (auto user = arg.user_begin(); user != arg.user_end(); user++) {
      if (IsReverseOp(*user) && isa<Instruction>(*user)) {
        auto *load = new LoadInst(Type::getInt32Ty(f.getContext()), reverse_op,
                                  "augmented_load", cast<Instruction>(*user));
        std::string line = "-OP: " + user->getNameOrAsOperand() + ", " +
                           arg.getNameOrAsOperand() + ", %d\n";
        CallPrintf(load, &line[0], {load}, line);
      }
    }
  }

  myfile.open("OpCount.txt");
  myfile << "forward_op_count: " << forward_op_count << "\n";
  myfile << "reverse_op_count: " << reverse_op_count << "\n";
  myfile << "forward mem ops count: " << forward_mem_ops_count << "\n";
  myfile << "reverse mem ops count: " << reverse_mem_ops_count << "\n";
  myfile.close();
  return true;
}

void OPCounterPass::visitLoadInst(LoadInst &I) {
  if (I.getName().contains("augmented")) {
    return;
  }
  std::string unique_tag = "load";

  load_id++;
  UpdateMemOpCount(&I);
  auto id = ConstantInt::get(Type::getInt32Ty(I.getContext()), load_id);
  std::string log_info = "#LOAD_%d, %x, ";
  log_info +=
      I.getParent()->getName().contains("invert") ? "REVERSE" : "FORWARD";
  unique_tag += I.getParent()->getName().contains("inv") ? "_rev_" : "_fw_";
  if (I.hasMetadata("LoopId")) {
    log_info += ", LoopId, " +
                dyn_cast<MDString>(I.getMetadata("LoopId")->getOperand(0))
                    ->getString()
                    .str();
    unique_tag += "_loop";
  }
  log_info += "\n";
  CallPrintf(&I, &log_info[0], {id, I.getPointerOperand()}, log_info);
}

void OPCounterPass::visitStoreInst(StoreInst &I) {
  if (I.getName().contains("augmented")) {
    return;
  }
  std::string unique_tag = "store";
  store_id++;
  UpdateMemOpCount(&I);
  auto id = ConstantInt::get(Type::getInt32Ty(I.getContext()), store_id);
  std::string log_info = "#STORE_%d, %x, ";
  log_info += I.getParent()->getName().contains("inv") ? "REVERSE" : "FORWARD";
  unique_tag += I.getParent()->getName().contains("inv") ? "_rev_" : "_fw_";
  if (I.hasMetadata("LoopId")) {
    log_info += ", LoopId, " +
                (dyn_cast<MDString>(I.getMetadata("LoopId")->getOperand(0)))
                    ->getString()
                    .str();
    unique_tag += "_loop";
  }
  log_info += "\n";
  CallPrintf(&I, &log_info[0], {id, I.getPointerOperand()}, unique_tag);
}

void OPCounterPass::visitUnaryInst(UnaryInstruction &I) { UpdateOpCount(&I); }
void OPCounterPass::visitBinaryOperator(BinaryOperator &ins) {
  UpdateOpCount(&ins);
}

void OPCounterPass::UpdateOpCount(Instruction *I) {
  Value *op;
  if (I->getParent()->getName().contains("invert")) {
    reverse_op_count++;
    op = reverse_op;
  } else {
    forward_op_count++;
    op = forward_op;
  }
  auto *load =
      new LoadInst(Type::getInt32Ty(I->getContext()), op, "augmented_load", I);
  auto *inc = BinaryOperator::Create(
      Instruction::Add, load,
      ConstantInt::get(Type::getInt32Ty(I->getContext()), 1), "inc",
      load->getNextNode());
  auto *store = new StoreInst(inc, op, false, inc->getNextNode());
  if (!I->getParent()->getName().contains("invert"))
    return;

  // auto *fw_load = new LoadInst(Type::getInt32Ty(I->getContext()), forward_op,
  // "load_forward_count", store->getNextNode()); auto *depth =
  // BinaryOperator::Create(Instruction::Add, inc, fw_load, "depth",
  // fw_load->getNextNode());

  if (isa<BinaryOperator>(I)) {
    if (!isa<Constant>(I->getOperand(0))) {
      std::string to_print = "-OP: " + I->getNameOrAsOperand() + ", " +
                             I->getOperand(0)->getNameOrAsOperand() + ", %d\n";
      CallPrintf(I, &to_print[0], {inc}, to_print);
    }
    if (!isa<Constant>(I->getOperand(1))) {
      std::string to_print = "-OP: " + I->getNameOrAsOperand() + ", " +
                             I->getOperand(1)->getNameOrAsOperand() + ", %d\n";
      CallPrintf(I, &to_print[0], {inc}, to_print);
    }
  }
  if (isa<UnaryInstruction>(I))
    if (!isa<Constant>(I->getOperand(0))) {
      std::string to_print = "-OP: " + I->getNameOrAsOperand() + ", " +
                             I->getOperand(0)->getNameOrAsOperand() + ", %d\n";
      CallPrintf(I, &to_print[0], {inc}, to_print);
    }
}

void OPCounterPass::UpdateMemOpCount(Instruction *I) {
  Value *op;
  if (I->getParent()->getName().contains("invert")) {
    reverse_mem_ops_count++;
    op = reverse_mem_op;
  } else {
    forward_mem_ops_count++;
    op = forward_mem_op;
  }
  auto *load =
      new LoadInst(Type::getInt32Ty(I->getContext()), op, "augmented_load", I);
  auto *inc = BinaryOperator::Create(
      Instruction::Add, load,
      ConstantInt::get(Type::getInt32Ty(I->getContext()), 1), "inc",
      load->getNextNode());
  auto *store = new StoreInst(inc, op, false, inc->getNextNode());
}

void OPCounterPass::visitReturnInst(ReturnInst &I) {
  auto *forward_op_load = new LoadInst(Type::getInt32Ty(I.getContext()),
                                       forward_op, "augmented_load", &I);
  auto *reverse_op_load = new LoadInst(Type::getInt32Ty(I.getContext()),
                                       reverse_op, "augmented_load", &I);
  auto *reverse_mem_load = new LoadInst(Type::getInt32Ty(I.getContext()),
                                        reverse_mem_op, "augmented_load", &I);
  auto *forward_mem_load = new LoadInst(Type::getInt32Ty(I.getContext()),
                                        forward_mem_op, "augmented_load", &I);
  CallPrintf(
      forward_mem_load,
      "forward ops = %d, reverse ops = %d, forward mem ops = %d, reverse mem "
      "ops = %d\n",
      {forward_op_load, reverse_op_load, forward_mem_load, reverse_mem_load},
      "ops_log");
}

char OPCounterPass::ID = 1;
static RegisterPass<OPCounterPass> X("oppass", "Operation Counter Pass");
