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

using namespace instrumem;

OPCounterPass::OPCounterPass() : FunctionPass(ID) {} // OPCounterPass

bool OPCounterPass::runOnFunction(Function &f)
{
    errs() << "Operation Counter analysis\n";
    visit(f);
    // errs() << "level, operation count\n";
    // for (auto i: levelOps) {
    //     errs() << i.first << ", " << i.second << "\n";
    // }
    myfile.open ("OpCount.txt");
    myfile << "forward_op_count: " << forward_op_count << "\n";
    myfile << "reverse_op_count: " << reverse_op_count << "\n";
    myfile.close();

    return true;
}

void OPCounterPass::visitLoadInst(LoadInst &I) {
    UpdateOpCount(&I);
}
void OPCounterPass::visitUnaryInst(UnaryInstruction &I) {
    UpdateOpCount(&I);
}
void OPCounterPass::visitBinaryOperator(BinaryOperator &ins) {
    UpdateOpCount(&ins);
    // uint32_t level = getLevel(&ins);
    // if (levelOps.count(level) == 0)
    //     levelOps[level] = 0;
    // levelOps[level]++;
}

void OPCounterPass::UpdateOpCount(Instruction *I) {
    if (I->getParent()->getName().contains("invert")) {
        reverse_op_count++;
    } else {
        forward_op_count++;
    }
}

char OPCounterPass::ID = 1;
static RegisterPass<OPCounterPass> X("oppass", "Operation Counter Pass");

