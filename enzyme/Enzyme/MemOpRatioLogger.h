
#ifndef MEMOP_RATIO_LOGGER_H
#define MEMOP_RATIO_LOGGER_H

#include <map>
#include <set>
#include <iostream>
#include <fstream>

#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace instrumem
{
struct MemOpRatioLogger : public FunctionPass,
                        InstVisitor<MemOpRatioLogger> {
    public:
        static char ID;
        MemOpRatioLogger();
        bool runOnFunction(Function &f) override;

        void visitLoadInst(LoadInst &inst);
        void visitStoreInst(StoreInst &inst);
        void visitInstruction(Instruction &inst);
        void visitReturnInst(ReturnInst &inst);
        void visitBinaryOperator(BinaryOperator &inst);

    private:
        AllocaInst *input_count;
        AllocaInst *output_count;
        AllocaInst *intermediate_count;
        std::vector<Value*> args;
        std::set<Value*> inputs;
};

} // namespace instrumem

#endif
