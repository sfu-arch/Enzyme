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

    for (auto &BB : f) {
        for (auto &I : BB) {
            auto &context = I.getContext();
            if (I.getName().contains("'de"))
                memOps[I.getName().str()] = std::make_pair(0, 0);

            if (BB.getName().contains("invert") || I.getName().contains("'de")) {
                I.setMetadata("mode", MDNode::get(context, MDString::get(context, "reverse")));
                I.setMetadata("tapeCost", MDNode::get(context, MDString::get(context, "0")));
            }
            else
                I.setMetadata("mode", MDNode::get(context, MDString::get(context, "forward")));
            
            I.setMetadata("calcCost", MDNode::get(context, MDString::get(context, "0")));
        }
    }
    F = &f;
    visit(f);
    return true;
}


void InstruMemPass::visitBinaryOperator(BinaryOperator &ins)
{
    auto op1 = ins.getOperand(0);
    auto op2 = ins.getOperand(1);
    uint32_t op1_calc_cost = getCalcCost(op1);
    uint32_t op2_calc_cost = getCalcCost(op2);
    uint32_t op1_tape_cost = 0, op2_tape_cost = 0;
    
    if (isReverseNode(&ins)) {
        uint32_t tapeCost = 0;
        op1_tape_cost = getTapeCost(op1);
        op2_tape_cost = getTapeCost(op2);
        errs() << "op1_tape_cost: " << op1_tape_cost << "\n";
        errs() << "op2_tape_cost: " << op2_tape_cost << "\n";
        tapeCost = op1_tape_cost + op2_tape_cost;
        ins.setMetadata("tapeCost", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(tapeCost))));
    }
    
    uint32_t maxCost = std::max(op1_calc_cost, op2_calc_cost);
    ins.setMetadata("calcCost", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(maxCost+1))));
}

void InstruMemPass::visitStoreInst(StoreInst &ins) {
    auto *op1 = ins.getOperand(0);
    if (isReverseNode(op1)) {
        memOps[ins.getOperand(1)->getName().str()].first = getCalcCost(ins.getOperand(0));
        memOps[ins.getOperand(1)->getName().str()].second = getTapeCost(ins.getOperand(0));
    }
}
void InstruMemPass::visitLoadInst(LoadInst &ins) {
    if (!isReverseNode(&ins))
        return;
    auto *op1 = ins.getOperand(0);
    if (memOps.count(op1->getName().str())) {
        ins.setMetadata("tapeCost", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(memOps[op1->getName().str()].second))));
        ins.setMetadata("calcCost", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(memOps[op1->getName().str()].first))));
    }
}

bool InstruMemPass::isReverseNode(Value *V)
{
    if (!isa<Instruction>(*V))
        return false;
    Instruction &I = cast<Instruction>(*V);
    auto *N = I.getMetadata("mode");
    auto *S = dyn_cast<MDString>(N->getOperand(0));
    return S->getString().str() == "reverse";
}

char InstruMemPass::ID = 0;
static RegisterPass<InstruMemPass> X("instrumem", "InstruMem Pass");
