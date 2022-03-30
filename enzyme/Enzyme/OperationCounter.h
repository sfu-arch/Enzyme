
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

    void UpdateOpCount(Instruction *I);
    void UpdateMemOpCount(Instruction *I);

    bool runOnFunction(llvm::Function &f) override;
    void visitBinaryOperator(BinaryOperator &ins);
    void visitUnaryInst(UnaryInstruction &I);
    void visitLoadInst(LoadInst &I);
    void visitStoreInst(StoreInst &I);
    void visitReturnInst(ReturnInst &I);
 
private:
    std::map<uint32_t, uint32_t> levelOps;
    int forward_op_count = 0;
    int reverse_op_count = 0;
    int forward_mem_ops_count = 0;
    int reverse_mem_ops_count = 0;
    int load_id = 0;
    int store_id = 0;

    Instruction *forward_op = nullptr;
    Instruction *reverse_op = nullptr;
    Instruction *forward_mem_op = nullptr;
    Instruction *reverse_mem_op = nullptr;

    llvm::Type *Int32Ty;
    std::ofstream myfile;

};

} // namespace instrumem

#endif
