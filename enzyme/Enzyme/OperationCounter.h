
#ifndef OPCOUNTER_H
#define OPCOUNTER_H

#include <map>
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

struct OPCounterPass : public llvm::FunctionPass,
                        llvm::InstVisitor<OPCounterPass> {
public:
    static char ID;
    llvm::Function *F = nullptr;

    OPCounterPass();

    uint32_t getLevel(Value *V) {
        if (!isa<Instruction>(*V))
            return 0;
        Instruction &I = cast<Instruction>(*V);
        auto *N = I.getMetadata("level");
        auto *S = dyn_cast<MDString>(N->getOperand(0));
        return stoi(S->getString().str());
    }
    void UpdateOpCount(Instruction *I);

    bool runOnFunction(llvm::Function &f) override;
    void visitBinaryOperator(BinaryOperator &ins);
    void visitUnaryInst(UnaryInstruction &I);
    void visitLoadInst(LoadInst &I);

private:
    std::map<uint32_t, uint32_t> levelOps;
    int forward_op_count = 0;
    int reverse_op_count = 0;
    std::ofstream myfile;

};

} // namespace instrumem

#endif
