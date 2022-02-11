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
            if (I.getName().contains("'")) 
                memOps[I.getName().str()] = std::make_pair(0, 0);

            if (BB.getName().contains("invert") || I.getName().contains("'")) {
                I.setMetadata("mode", MDNode::get(context, MDString::get(context, "reverse")));
                I.setMetadata("tapeCost", MDNode::get(context, MDString::get(context, "0")));
            }
            else
                I.setMetadata("mode", MDNode::get(context, MDString::get(context, "forward")));
            
            I.setMetadata("level", MDNode::get(context, MDString::get(context, "0")));
        }
    }
    F = &f;
    visit(f);

    errs() << "Tape cost: " << edges.size() + memOps.size() << "\n";

    return true;
}

void InstruMemPass::visitBinaryOperator(BinaryOperator &ins)
{    
    visitInstruction(ins);
    if (!isReverseNode(&ins)) 
        return;
    auto op1 = ins.getOperand(0);
    auto op2 = ins.getOperand(1);

    uint32_t op1_tape_cost = 0, op2_tape_cost = 0;
    
        // Check if it has an edge to forward pass
    if (isForwardNode(op1))
        edges.insert(op1->getName().str());
    if (isForwardNode(op2)) 
        edges.insert(op2->getName().str());

    uint32_t tapeCost = 0;
    op1_tape_cost = getTapeCost(op1);
    op2_tape_cost = getTapeCost(op2);
    tapeCost = op1_tape_cost + op2_tape_cost;
    ins.setMetadata("tapeCost", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(tapeCost))));
    
}

void InstruMemPass::visitStoreInst(StoreInst &ins) {

    auto *op1 = ins.getOperand(0);
    if (isReverseNode(op1)) {
        memOps[ins.getOperand(1)->getName().str()].first = std::max(memOps[ins.getOperand(1)->getName().str()].first, getLevel(ins.getOperand(0)));
        memOps[ins.getOperand(1)->getName().str()].second = std::max(memOps[ins.getOperand(1)->getName().str()].second, getTapeCost(ins.getOperand(0)));
    }
}

void InstruMemPass::visitLoadInst(LoadInst &ins) {
    if (!isReverseNode(&ins))
        return;
    auto *op1 = ins.getOperand(0);
    if (memOps.count(op1->getName().str())) {
        ins.setMetadata("tapeCost", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(memOps[op1->getName().str()].second))));
        ins.setMetadata("level", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(memOps[op1->getName().str()].first))));
    }
}

void InstruMemPass::visitReturnInst(ReturnInst &ins) {
}

void InstruMemPass::visitInstruction(Instruction &ins) {
    uint32_t maxLevel = 0;

    for (int i=0; i < ins.getNumOperands(); i++) {
        auto *op = ins.getOperand(i);
        uint32_t level = getLevel(op);
        if (level > maxLevel)
            maxLevel = level;
    }
    ins.setMetadata("level", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(maxLevel+1))));

    // if (!isReverseNode(&ins))
    //     return;

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

bool InstruMemPass::isForwardNode(Value *V)
{
    if (!isa<Instruction>(*V))
        return false;
    Instruction &I = cast<Instruction>(*V);
    auto *N = I.getMetadata("mode");
    auto *S = dyn_cast<MDString>(N->getOperand(0));
    return S->getString().str() == "forward";
}


char InstruMemPass::ID = 0;
static RegisterPass<InstruMemPass> X("instrumem", "InstruMem Pass");
