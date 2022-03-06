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

#include "ForwardNodeInstrument.h"
#include "llvm/IR/IRBuilder.h"
#include "Utils.h"

using namespace instrumem;

ForwardNodeInstPass::ForwardNodeInstPass() : FunctionPass(ID) {} // ForwardNodeInstPass

bool ForwardNodeInstPass::runOnFunction(Function &f) {
    visit(f);
    return true;
}

void ForwardNodeInstPass::visitInstruction(Instruction &I) {
    if (I.hasMetadata("node"))
        CallPrintf(&I, "Node\n", {});
}


char ForwardNodeInstPass::ID = 0;
static RegisterPass<ForwardNodeInstPass> X("forward_inst", "ForwardNodeInstPass");
