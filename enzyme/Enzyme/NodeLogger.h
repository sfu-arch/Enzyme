
#ifndef NODE_LOGGER_H
#define NODE_LOGGER_H

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
struct NodeLogger : public FunctionPass,
                        InstVisitor<NodeLogger> {
    public:
        static char ID;
        NodeLogger();
        bool runOnFunction(Function &f) override;

        void visitLoadInst(LoadInst &inst);
        void visitStoreInst(StoreInst &inst);
        void visitInstruction(Instruction &inst);
        void visitAllocaInst(AllocaInst &inst);

    private:
        std::map<Value*, unsigned> node_ids;
        std::ofstream myfile;

};

} // namespace instrumem

#endif
