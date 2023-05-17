#ifndef LAYER_GENERATOR_H
#define LAYER_GENERATOR_H

#include "GradientUtils.h"

#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include <llvm/Analysis/LoopInfo.h>

namespace tapeman {
// A pass to generate layers by detecting loops and write pushs/pops based on
// the writes in each loop.
class LayerGenerator : public llvm::FunctionPass,
                       llvm::InstVisitor<LayerGenerator> {
public:
  static char ID;
  LayerGenerator() : FunctionPass(ID) {} // LayerGenerator
  LayerGenerator(GradientUtils *gutils)
      : FunctionPass(ID), gutils_(gutils) {} // LayerGenerator

  bool runOnFunction(llvm::Function &F) override;

  void getAnalysisUsage(llvm::AnalysisUsage &AU) const override {
    AU.addRequired<llvm::LoopInfoWrapperPass>();
  }

private:
  GradientUtils *gutils_ = nullptr;
};

} // namespace tapeman

#endif // LAYER_GENERATOR_H
