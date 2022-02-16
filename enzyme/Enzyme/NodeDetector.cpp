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

#include <unordered_map>

#include "llvm/IR/IRBuilder.h"

#include "NodeDetector.h"
#include "Utils.h"

using namespace instrumem;

NodeDetectorPass::NodeDetectorPass() : FunctionPass(ID) {} // NodeDetectorPass

void NodeDetectorPass::appendNode(Instruction* I, std::unordered_map<std::string, std::vector<std::string> > *nodeMap) {
    int derivIndex = 0;
    std::string nodeName = "";
    for (int i = 0; i < I->getNumOperands(); i++)
        if (isDeriv(I->getOperand(i))) { 
            derivIndex = i;
            break;
        }
    nodeName = I->getOperand(derivIndex)->getNameOrAsOperand();
    if (!nodeMap->count(nodeName)) {
        (*nodeMap)[nodeName] = {};
    }
    
    for (int i = 0; i < I->getNumOperands(); i++)
        if (i != derivIndex) {
            // errs() << "Node: " << I->getOperand(derivIndex)->getNameOrAsOperand() << " | " << *I->getOperand(i) << "\n";
            (*nodeMap)[nodeName].push_back(I->getOperand(i)->getNameOrAsOperand());
        }
    

}

bool NodeDetectorPass::runOnFunction(Function &f)
{
    std::unordered_map<std::string, std::vector<std::string>> nodeMap;
    errs() << "NodeDetector ...\n";
    visit(f);
    for (auto &BB : f)
        for (auto &I : BB) 
            if (isReverseOp(&I)) {
                bool flag = false;
                for (auto U : I.users())
                    if (isDerivStore(U)) {
                        flag = true;
                        break;
                    }
                if (!flag) // It's a node
                    appendNode(&I, &nodeMap);
            }

    errs() << "node count: " << nodeMap.size() << "\tTape size: " << ((nodeMap.size() * NODE_SIZE ) >> 3) << " Bytes" << "\n";

    return true;
}

void NodeDetectorPass::visitStoreInst(llvm::StoreInst &I) {
    if (isDeriv(I.getOperand(1)) && !isa<Constant>(I.getOperand(0)))
        I.setMetadata("derivStore", MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
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
    for (int i=0; i < I.getNumOperands(); i++)
        if (isa<Instruction>(I.getOperand(i)) && hasMetadata((llvm::Instruction*)I.getOperand(i), "deriv"))
            I.setMetadata("deriv", MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitTruncInst(llvm::TruncInst &I) {
    if (isa<Instruction>(I.getOperand(0)) && hasMetadata((llvm::Instruction*)I.getOperand(0), "deriv"))
        I.setMetadata("deriv", MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitSExtInst(llvm::SExtInst &I) {
    if (isa<Instruction>(I.getOperand(0)) && hasMetadata((llvm::Instruction*)I.getOperand(0), "deriv"))
        I.setMetadata("deriv", MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
    else
        visitInstruction(I);
}

void NodeDetectorPass::visitInstruction(Instruction &ins) {
    for (auto i = 0; i < ins.getNumOperands(); i++) {
        if (isDeriv(ins.getOperand(i))) {
            ins.setMetadata("reverseOp", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), "true")));
            break;
        }
        if (isReverseOp(ins.getOperand(i))) {
            ins.setMetadata("reverseSuccessor", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), "true")));
        }
    }
}

char NodeDetectorPass::ID = 1;
static RegisterPass<NodeDetectorPass> X("nodepass", "NodeDetector Pass");

