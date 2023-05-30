
#ifndef SCHEDULER_H
#define SCHEDULER_H

#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <map>

using namespace llvm;

#define PARALLEL_LIMIT 4

namespace instrumem {

struct SchedulerPass : public llvm::FunctionPass,
                       llvm::InstVisitor<SchedulerPass> {

private:
  std::vector<uint32_t> cyclesOps;

  uint32_t getLevel(Value *V) {
    if (!isa<Instruction>(*V))
      return 0;
    Instruction &I = cast<Instruction>(*V);
    auto *N = I.getMetadata("level");
    auto *S = dyn_cast<MDString>(N->getOperand(0));
    return stoi(S->getString().str());
  };

  uint32_t getNextAvailableLevel(uint32_t level) {
    if (PARALLEL_LIMIT == -1)
      return level;

    if (level >= cyclesOps.size()) {
      cyclesOps.push_back(1);
      return level;
    }

    for (int i = level; i < cyclesOps.size(); i++) {
      if (cyclesOps[i] < PARALLEL_LIMIT) {
        cyclesOps[i]++;
        return i;
      }
    }
    cyclesOps.push_back(1);
    return cyclesOps.size() - 1;
  }

public:
  static char ID;
  llvm::Function *F = nullptr;

  SchedulerPass();

  bool runOnFunction(llvm::Function &f) override;
  void visitBinaryOperator(BinaryOperator &ins);
  void visitInstruction(Instruction &ins);
};

} // namespace instrumem

#endif
