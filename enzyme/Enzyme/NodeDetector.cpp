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

#include <map>

#include "llvm/IR/IRBuilder.h"

#include "NodeDetector.h"
#include "Utils.h"

using namespace instrumem;

NodeDetectorPass::NodeDetectorPass() : FunctionPass(ID) {} // NodeDetectorPass

void NodeDetectorPass::appendNode(
    Instruction *I, std::map<Value *, std::vector<Value *>> *nodeMap) {
  int derivIndex = 0;
  for (int i = 0; i < I->getNumOperands(); i++)
    if (isDeriv(I->getOperand(i))) {
      derivIndex = i;
      break;
    }

  auto op = I->getOperand(derivIndex);
  if (!nodeMap->count(op))
    (*nodeMap)[op] = {};

  for (int i = 0; i < I->getNumOperands(); i++)
    if (i != derivIndex)
      (*nodeMap)[op].push_back(I->getOperand(i));
}

void NodeDetectorPass::logNodes(
    std::map<Value *, std::vector<Value *>> nodeMap) {
  errs() << "Nodes: \n";

  for (auto &node : nodeMap) {
    errs() << node.first->getNameOrAsOperand();
    uint32_t nodeCost = getLevel(node.first);
    for (auto &op : node.second)
      errs() << "\n\tsrc: " << op->getNameOrAsOperand()
             << ", cost: " << getLevel(op);
    errs() << "\n";
  }
}

bool isMultOrDiv(Instruction *I) {
  if (!isa<BinaryOperator>(I))
    return false;
  return (I->getOpcode() == 18 || I->getOpcode() == 21);
}

bool NodeDetectorPass::runOnFunction(Function &f) {
  for (auto &arg : f.args())
    funcArgs.insert(&arg);

  std::map<Value *, std::vector<Value *>> nodeMap;
  errs() << "NodeDetector ...\n";
  visit(f);
  for (auto &BB : f)
    for (auto &I : BB)
      if (isReverseOp(&I) && isMultOrDiv(&I)) {
        bool flag = false;
        for (auto U : I.users())
          if (isDerivStore(U)) {
            flag = true;
            break;
          }
        if (!flag) { // It's a node
          appendNode(&I, &nodeMap);
        }
      }

  errs() << "node count: " << nodeMap.size()
         << "\tTape size: " << ((nodeMap.size() * NODE_SIZE) >> 3) << " Bytes"
         << "\n";
  logNodes(nodeMap);
  return true;
}

void NodeDetectorPass::visitStoreInst(llvm::StoreInst &I) {
  if (isDeriv(I.getOperand(1)) && !isa<Constant>(I.getOperand(0)))
    I.setMetadata(
        "derivStore",
        MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitLoadInst(llvm::LoadInst &I) {
  if ((isa<Instruction>(I.getOperand(0)) &&
       hasMetadata((llvm::Instruction *)I.getOperand(0), "deriv")) ||
      funcArgs.count(I.getOperand(0)))
    I.setMetadata("deriv", MDNode::get(I.getContext(),
                                       MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitAllocaInst(llvm::AllocaInst &I) {
  if (I.getParent()->getName().contains("entry"))
    I.setMetadata("deriv", MDNode::get(I.getContext(),
                                       MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitGetElementPtrInst(llvm::GetElementPtrInst &I) {
  for (int i = 0; i < I.getNumOperands(); i++)
    if (isa<Instruction>(I.getOperand(i)) &&
        hasMetadata((llvm::Instruction *)I.getOperand(i), "deriv"))
      I.setMetadata(
          "deriv",
          MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitTruncInst(llvm::TruncInst &I) {
  if (isa<Instruction>(I.getOperand(0)) &&
      hasMetadata((llvm::Instruction *)I.getOperand(0), "deriv"))
    I.setMetadata("deriv", MDNode::get(I.getContext(),
                                       MDString::get(I.getContext(), "true")));
}

void NodeDetectorPass::visitSExtInst(llvm::SExtInst &I) {
  if (isa<Instruction>(I.getOperand(0)) &&
      hasMetadata((llvm::Instruction *)I.getOperand(0), "deriv"))
    I.setMetadata("deriv", MDNode::get(I.getContext(),
                                       MDString::get(I.getContext(), "true")));
  else
    visitInstruction(I);
}

void NodeDetectorPass::visitInstruction(Instruction &ins) {
  for (auto i = 0; i < ins.getNumOperands(); i++) {
    if (isDeriv(ins.getOperand(i))) {
      ins.setMetadata("reverseOp",
                      MDNode::get(ins.getContext(),
                                  MDString::get(ins.getContext(), "true")));
      break;
    }

    if (isReverseOp(ins.getOperand(i)) || isReverseSuccessor(ins.getOperand(i)))
      ins.setMetadata("reverseSuccessor",
                      MDNode::get(ins.getContext(),
                                  MDString::get(ins.getContext(), "true")));
  }
}

char NodeDetectorPass::ID = 1;
static RegisterPass<NodeDetectorPass> X("nodepass", "NodeDetector Pass");
