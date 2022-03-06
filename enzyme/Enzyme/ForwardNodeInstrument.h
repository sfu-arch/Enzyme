
#ifndef FORWARD_NODE_INST_H
#define FORWARD_NODE_INST_H

#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <map>
#include <set>

using namespace llvm;

namespace instrumem
{
struct ForwardNodeInstPass : public llvm::FunctionPass,
                        llvm::InstVisitor<ForwardNodeInstPass> {
    public:
        static char ID;
        ForwardNodeInstPass();
        bool runOnFunction(llvm::Function &f) override;
        void visitInstruction(Instruction &I);
    private:

};

} // namespace instrumem

#endif
