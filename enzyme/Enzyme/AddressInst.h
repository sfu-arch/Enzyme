
#ifndef ADDRESS_INST_H
#define ADDRESS_INST_H

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
struct AddressInstPass : public FunctionPass,
                        InstVisitor<AddressInstPass> {
    public:
        static char ID;
        AddressInstPass();
        bool runOnFunction(Function &f) override;

        void visitLoadInst(LoadInst &inst);
        void visitStoreInst(StoreInst &inst);

        void callPrintf(Instruction *I, char *format, std::vector<Value *> args);

};

} // namespace instrumem

#endif
