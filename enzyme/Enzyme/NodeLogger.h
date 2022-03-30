
#ifndef NODE_LOGGER_H
#define NODE_LOGGER_H

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
struct NodeLogger : public FunctionPass,
                        InstVisitor<NodeLogger> {
    public:
        static char ID;
        NodeLogger();
        bool runOnFunction(Function &f) override;

        void visitLoadInst(LoadInst &inst);
        void visitStoreInst(StoreInst &inst);
};

} // namespace instrumem

#endif
