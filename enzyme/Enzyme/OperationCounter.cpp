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

#include "OperationCounter.h"
#include "llvm/IR/IRBuilder.h"

#include "Utils.h"

using namespace instrumem;

OPCounterPass::OPCounterPass() : FunctionPass(ID) {} // OPCounterPass

bool OPCounterPass::runOnFunction(Function &f)
{
    errs() << "Operation Counter analysis\n";
    // errs() << "level, operation count\n";
    // for (auto i: levelOps) {
    //     errs() << i.first << ", " << i.second << "\n";
    // }
     std::vector<Instruction*> insts;
    for (auto &BB: f)
        for (auto &I: BB)
            insts.push_back(&I);


    auto &I = *f.getBasicBlockList().begin()->begin();
    Int32Ty = Type::getInt32Ty(f.getContext());
    auto zero = ConstantInt::get(Type::getInt32Ty(I.getContext()), 0);
    forward_op = new AllocaInst(Int32Ty, 0, "forward_op", &I);
    new StoreInst(zero, forward_op, false, &I);

    reverse_op = new AllocaInst(Int32Ty, 0, "reverse_op", &I);
    new StoreInst(zero, reverse_op, false, &I);
    
    forward_mem_op = new AllocaInst(Int32Ty, 0, "forward_mem", &I);
    new StoreInst(zero, forward_mem_op, false, &I);

    reverse_mem_op = new AllocaInst(Int32Ty, 0, "reverse_mem", &I);
    new StoreInst(zero, reverse_mem_op, false, &I);

    for (auto &i: insts)
        visit(i);

    myfile.open ("OpCount.txt");
    myfile << "forward_op_count: " << forward_op_count << "\n";
    myfile << "reverse_op_count: " << reverse_op_count << "\n";
    myfile << "forward mem ops count: " << forward_mem_ops_count << "\n";
    myfile << "reverse mem ops count: " << reverse_mem_ops_count << "\n";
    myfile.close();
    return true;
}

void OPCounterPass::visitLoadInst(LoadInst &I) {
    if (I.getName().contains("augmented")) {
        return;
    }
    UpdateMemOpCount(&I);
}

void OPCounterPass::visitStoreInst(StoreInst &I) {
    if (I.getName().contains("augmented")) {
        return;
    }
    UpdateMemOpCount(&I);
}

void OPCounterPass::visitUnaryInst(UnaryInstruction &I) {
    UpdateOpCount(&I);
}
void OPCounterPass::visitBinaryOperator(BinaryOperator &ins) {
    UpdateOpCount(&ins);
}

void OPCounterPass::UpdateOpCount(Instruction *I) {
    Value* op;
    if (I->getParent()->getName().contains("invert")) {
        reverse_op_count++;
        op = reverse_op;
    } else {
        forward_op_count++;
        op = forward_op;
    }
    auto *load = new LoadInst(Type::getInt32Ty(I->getContext()), op, "augmented_load", I->getNextNode());
    auto *inc = BinaryOperator::Create(Instruction::Add, load, ConstantInt::get(Type::getInt32Ty(I->getContext()), 1), "inc", load->getNextNode());
    auto *store = new StoreInst(inc, op, false, inc->getNextNode());
}

void OPCounterPass::UpdateMemOpCount(Instruction *I) {
    Value* op;
    if (I->getParent()->getName().contains("invert")) {
        reverse_mem_ops_count++;
        op = reverse_mem_op;
    } else {
        forward_mem_ops_count++;
        op = forward_mem_op;
    }
    auto *load = new LoadInst(Type::getInt32Ty(I->getContext()), op, "augmented_load", I);
    auto *inc = BinaryOperator::Create(Instruction::Add, load, ConstantInt::get(Type::getInt32Ty(I->getContext()), 1), "inc", load->getNextNode());
    auto *store = new StoreInst(inc, op, false, inc->getNextNode());
}

void OPCounterPass::visitReturnInst(ReturnInst &I) {
    auto *forward_op_load = new LoadInst(Type::getInt32Ty(I.getContext()), forward_op, "augmented_load", &I);
    auto *reverse_op_load = new LoadInst(Type::getInt32Ty(I.getContext()), reverse_op, "augmented_load", &I);
    auto *reverse_mem_load = new LoadInst(Type::getInt32Ty(I.getContext()), reverse_mem_op, "augmented_load", &I);
    auto *forward_mem_load = new LoadInst(Type::getInt32Ty(I.getContext()), forward_mem_op, "augmented_load", &I);
    CallPrintf(forward_mem_load, 
               "forward ops = %d, reverse ops = %d, forward mem ops = %d, reverse mem ops = %d\n",
               {forward_op_load, reverse_op_load, forward_mem_load, reverse_mem_load});
}

char OPCounterPass::ID = 1;
static RegisterPass<OPCounterPass> X("oppass", "Operation Counter Pass");

