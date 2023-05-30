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

#include "LoadLogger.h"
#include "Utils.h"
#include "llvm/IR/IRBuilder.h"

using namespace instrumem;

LoadLoggerPass::LoadLoggerPass() : FunctionPass(ID) {} // LoadLoggerPass

bool LoadLoggerPass::runOnFunction(Function &f) {
  errs() << "LoadLogger ...\n";
  std::vector<Instruction *> ops;

  for (auto &BB : f)
    for (auto &I : BB)
      if (isa<LoadInst>(I) || isa<StoreInst>(I))
        ops.push_back(&I);

  for (auto op : ops)
    visit(*op);

  return false;
}

void LoadLoggerPass::visitInstruction(Instruction &inst) {
  errs() << " Sssssssssss " << inst << "\n";
  // This function calls the printf after the given instruction.
  // HOW TO USE:
  //     std::vector<Value*> args = {arg0, arg1, arg2, ...};
  //     CallPrintf(call_before, format, args);
  //
  auto pointer_operand =
      isa<LoadInst>(inst) ? inst.getOperand(0) : inst.getOperand(1);
  std::string format = pointer_operand->getNameOrAsOperand() + ", %u\n";
  CallPrintf(inst.getNextNode(), &format[0], {pointer_operand}, format);
}

char LoadLoggerPass::ID = 1;
static RegisterPass<LoadLoggerPass> X("loadlpass", "LoadLogger Pass");
