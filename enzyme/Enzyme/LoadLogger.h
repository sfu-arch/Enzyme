
#ifndef LOAD_LOGGER_H
#define LOAD_LOGGER_H

#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <map>

using namespace llvm;

namespace instrumem {

struct LoadLoggerPass : public llvm::FunctionPass,
                        llvm::InstVisitor<LoadLoggerPass> {

public:
  static char ID;
  llvm::Function *F = nullptr;

  LoadLoggerPass();

  bool runOnFunction(llvm::Function &f) override;
  void visitInstruction(llvm::Instruction &ins);
};

} // namespace instrumem

#endif
