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

#include "LifetimeAnalysis.h"
#include "llvm/IR/IRBuilder.h"

using namespace life;

LifetimePass::LifetimePass() : FunctionPass(ID) {} // LifetimePass

bool LifetimePass::runOnFunction(Function &f)
{
    errs() << "Lifetime analysis\n";
    visit(f);
    return true;
}

void LifetimePass::visitInstruction(Instruction &ins) {
    uint32_t maxUsedLevel = getLevel(&ins);
    for (auto i: ins.users())
        if (getCycle(i) > maxUsedLevel)
            maxUsedLevel = getLevel(i);
    uint32_t lifetime = maxUsedLevel - getLevel(&ins) + 1;
    ins.setMetadata("lifetime", MDNode::get(ins.getContext(), MDString::get(ins.getContext(), std::to_string(lifetime))));

}

char LifetimePass::ID = 1;
static RegisterPass<LifetimePass> X("life", "Lifetime Pass");

