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
#include "llvm/IR/IRBuilder.h"

using namespace instrumem;

OPCounterPass::OPCounterPass() : FunctionPass(ID) {} // OPCounterPass

bool OPCounterPass::runOnFunction(Function &f)
{
    errs() << "Operation Counter analysis\n";
    visit(f);
    errs() << "level, operation count\n";
    for (auto i: levelOps) {
        errs() << i.first << ", " << i.second << "\n";
    }
    return true;
}

void OPCounterPass::visitBinaryOperator(BinaryOperator &ins) {
    uint32_t level = getLevel(&ins);
    if (levelOps.count(level) == 0)
        levelOps[level] = 0;
    levelOps[level]++;
}

char OPCounterPass::ID = 1;
static RegisterPass<OPCounterPass> X("oppass", "Operation Counter Pass");

