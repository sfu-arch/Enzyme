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


#include "llvm/IR/IRBuilder.h"

#include "NodeDetector.h"
#include "Utils.h"

using namespace instrumem;

NodeDetectorPass::NodeDetectorPass() : FunctionPass(ID) {} // NodeDetectorPass

bool NodeDetectorPass::runOnFunction(Function &f)
{
    errs() << "NodeDetector ...\n";
    // for (auto &BB : f)
    //     for (auto &I : BB) 
    //         if (isDeriv(&I))
    //             I.setMetadata("deriv", MDNode::get(I.getContext(), MDString::get(I.getContext(), "deriv")));
    visit(f);

    // for (int i=0; i < cyclesOps.size(); i++)
    //     errs() << i << ", " <<  cyclesOps[i] << "\n";

    return true;
}


void NodeDetectorPass::visitLoadInst(llvm::LoadInst &I) {
 if (isa<Instruction>(I.getOperand(0)) && hasMetadata((llvm::Instruction*)I.getOperand(0), "deriv"))
        I.setMetadata("deriv", MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitAllocaInst(llvm::AllocaInst &I) {
    if (I.getParent()->getName().contains("entry"))
        I.setMetadata("deriv", MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitGetElementPtrInst(llvm::GetElementPtrInst &I) {
    if (isa<Instruction>(I.getOperand(0)) && hasMetadata((llvm::Instruction*)I.getOperand(0), "deriv"))
        I.setMetadata("deriv", MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitInstruction(Instruction &ins) {
    for (auto i = 0; i < ins.getNumOperands(); i++)
        if (isDeriv(ins.getOperand(i))) {
            ins.setMetadata("reverseOp", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), "true")));
            break;
        }
}

char NodeDetectorPass::ID = 1;
static RegisterPass<NodeDetectorPass> X("nodepass", "NodeDetector Pass");

