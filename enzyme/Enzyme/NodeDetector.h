
#ifndef NODE_DETECTOR_H
#define NODE_DETECTOR_H

#include <set>

#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include "Utils.h"

using namespace llvm;

#define NODE_SIZE 158

namespace instrumem {

struct NodeDetectorPass : public llvm::FunctionPass,
                          llvm::InstVisitor<NodeDetectorPass> {

private:
  llvm::Function *F = nullptr;
  std::set<Value *> funcArgs;

public:
  static char ID;

  NodeDetectorPass();

  bool runOnFunction(llvm::Function &f) override;
  void visitStoreInst(llvm::StoreInst &I);
  void visitBitCastInst(BitCastInst &ins) {}
  void visitCallInst(CallInst &ins) {}

  void visitInstruction(Instruction &ins);
  void visitLoadInst(llvm::LoadInst &I);
  void visitAllocaInst(llvm::AllocaInst &I);
  void visitGetElementPtrInst(llvm::GetElementPtrInst &I);
  void visitTruncInst(llvm::TruncInst &I);
  void visitSExtInst(llvm::SExtInst &I);

  bool isDeriv(Value *I) {
    return isa<Instruction>(I) && hasMetadata((llvm::Instruction *)I, "deriv");
  }
  bool isReverseOp(Value *I) {
    return isa<Instruction>(I) &&
           hasMetadata((llvm::Instruction *)I, "reverseOp");
  }
  bool isDerivStore(Value *I) {
    return isa<Instruction>(I) &&
           hasMetadata((llvm::Instruction *)I, "derivStore");
  }
  bool isReverseSuccessor(Value *I) {
    return isa<Instruction>(I) &&
           hasMetadata((llvm::Instruction *)I, "reverseSuccessor");
  }

  uint32_t getLevel(Value *V) {
    if (!isa<Instruction>(*V))
      return 0;
    Instruction &I = cast<Instruction>(*V);
    auto *N = I.getMetadata("level");
    auto *S = dyn_cast<MDString>(N->getOperand(0));
    return stoi(S->getString().str());
  };

  void appendNode(Instruction *I,
                  std::map<Value *, std::vector<Value *>> *nodeMap);
  void logNodes(std::map<Value *, std::vector<Value *>> nodeMap);
};

} // namespace instrumem

#endif
