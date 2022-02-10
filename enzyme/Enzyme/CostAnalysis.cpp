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

#include "CostAnalysis.h"
#include "llvm/IR/IRBuilder.h"

using namespace instrumem;

InstruMemPass::InstruMemPass() : FunctionPass(ID) {} // InstruMemPass

bool InstruMemPass::runOnFunction(Function &f)
{
    for (auto &BB : f)
        for (auto &I : BB)
            I.setMetadata("cost", MDNode::get(I.getContext(), MDString::get(I.getContext(), "0")));
    F = &f;
    visit(f);
    return true;
}


void InstruMemPass::visitBinaryOperator(BinaryOperator &ins)
{
    auto op1 = ins.getOperand(0);
    auto op2 = ins.getOperand(1);
    uint32_t op1_cost = getCost(op1);
    uint32_t op2_cost = getCost(op2);
    uint32_t maxCost = std::max(op1_cost, op2_cost);
    ins.setMetadata("cost", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(maxCost+1))));
    errs() << "BinaryOperator: " << maxCost + 1 << "\n";

}





char InstruMemPass::ID = 0;
static RegisterPass<InstruMemPass> X("instrumem", "InstruMem Pass");
