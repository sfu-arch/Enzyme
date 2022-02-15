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

#include "Scheduler.h"
#include "llvm/IR/IRBuilder.h"

using namespace instrumem;

SchedulerPass::SchedulerPass() : FunctionPass(ID) {} // SchedulerPass

bool SchedulerPass::runOnFunction(Function &f)
{
    errs() << "Scheduler ...\n";
    visit(f);

    for (int i=0; i < cyclesOps.size(); i++)
        errs() << i << ", " <<  cyclesOps[i] << "\n";

    return true;
}

void SchedulerPass::visitBinaryOperator(BinaryOperator &ins) {
    uint32_t cycle = getNextAvailableLevel(getLevel(&ins));
    ins.setMetadata("cycle", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(cycle))));

}

void SchedulerPass::visitInstruction(Instruction &ins) {
    ins.setMetadata("cycle", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(getLevel(&ins)))));

}

char SchedulerPass::ID = 1;
static RegisterPass<SchedulerPass> X("schpass", "Scheduler Counter Pass");

