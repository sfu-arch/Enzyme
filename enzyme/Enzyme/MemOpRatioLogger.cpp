#include "MemOpRatioLogger.h"
#include "Utils.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Option/Arg.h"

extern "C" {
llvm::cl::opt<bool>
    CrazyMode("crazy-mode", cl::init(false), cl::Hidden,
              cl::desc("Considering all binary ops as intermediate."));
}

using namespace instrumem;

MemOpRatioLogger::MemOpRatioLogger() : FunctionPass(ID) {} // MemOpRatioLogger

bool MemOpRatioLogger::runOnFunction(Function &f) {
  if (f.getName().contains("main")) {
    return false;
  }
  errs() << "Ratio Logger\n";
  std::vector<Instruction *> insts;
  for (auto &bb : f) {
    for (auto &i : bb) {
      insts.push_back(&i);
    }
  }
  Instruction *first_inst = &f.front().front();
  for (int i = 0; i < f.arg_size(); i++)
    args.push_back(f.getArg(i));

  for (auto &i : insts) {
    if (isa<LoadInst>(i) || isa<StoreInst>(i) || isa<ReturnInst>(i) ||
        isa<BinaryOperator>(i)) {
      visit(i);
    }
  }
  return true;
}
void MemOpRatioLogger::visitLoadInst(LoadInst &inst) {
  if (inst.getParent()->getName().contains("invert"))
    return;
  if (inst.hasMetadata("write"))
    CallPrintf(inst.getNextNode(), "memOp: Inter\n", {});

  GetElementPtrInst *gep = nullptr;
  bool gep_is_input = false;

  auto ptr_op = inst.getPointerOperand();
  bool ptr_is_input = false;
  if (ptr_op) {
    ptr_is_input = inputs.count(ptr_op) > 0 ||
                   std::count(args.begin(), args.end(), ptr_op);
    if (ptr_is_input)
      inputs.insert(ptr_op);
  }
  if (isa<GetElementPtrInst>(ptr_op)) {
    gep = dyn_cast<GetElementPtrInst>(ptr_op);
    gep_is_input =
        std::count(args.begin(), args.end(), gep->getPointerOperand()) ||
        inputs.count(gep->getPointerOperand());
    if (gep_is_input) {
      inputs.insert(gep->getPointerOperand());
      inputs.insert(gep);
    }
  }

  if (ptr_op || gep_is_input) {
    CallPrintf(inst.getNextNode(), "memOp: Input\n", {});
    inputs.insert(&inst);
  }
}

void MemOpRatioLogger::visitStoreInst(StoreInst &inst) {
  if (inst.getParent()->getName().contains("invert"))
    return;
  if (inst.hasMetadata("write")) {
    CallPrintf(inst.getNextNode(), "memOp: Inter\n", {});
  }
  if (inst.getPointerOperand()->getNameOrAsOperand().find("cache") ==
      std::string::npos) {
    CallPrintf(inst.getNextNode(), "memOp: Out\n", {});
  }
}

void MemOpRatioLogger::visitBinaryOperator(BinaryOperator &inst) {
  if (inst.getParent()->getName().contains("invert"))
    return;
  CallPrintf(inst.getNextNode(), "memOp: Inter\n", {});
}

void MemOpRatioLogger::visitReturnInst(ReturnInst &inst) {}
char MemOpRatioLogger::ID = 1;
static RegisterPass<MemOpRatioLogger> X("mem-op-ratio",
                                        "MemOp Ratio Logger Pass");
