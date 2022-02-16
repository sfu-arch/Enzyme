
#ifndef NODE_DETECTOR_H
#define NODE_DETECTOR_H

#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include "Utils.h"

using namespace llvm;

#define PARALLEL_LIMIT 4

namespace instrumem
{

    struct NodeDetectorPass : public llvm::FunctionPass,
                           llvm::InstVisitor<NodeDetectorPass>
    {
    
    private:

        uint32_t getLevel(Value *V) {
            if (!isa<Instruction>(*V))
                return 0;
            Instruction &I = cast<Instruction>(*V);
            auto *N = I.getMetadata("level");
            auto *S = dyn_cast<MDString>(N->getOperand(0));
            return stoi(S->getString().str());
        };
        
        bool isDeriv(Value *I) {
            return isa<Instruction>(I) && hasMetadata((llvm::Instruction*)I, "deriv");

        }

    public:
        static char ID;
        llvm::Function *F = nullptr;

        NodeDetectorPass();

        bool runOnFunction(llvm::Function &f) override;
        void visitStoreInst(llvm::StoreInst &I) {}
        void visitBitCastInst(BitCastInst &ins) {}
        void visitCallInst(CallInst &ins) {}

        void visitInstruction(Instruction &ins);
        void visitLoadInst(llvm::LoadInst &I);
        void visitAllocaInst(llvm::AllocaInst &I);
        void visitGetElementPtrInst(llvm::GetElementPtrInst &I);



    };

} // namespace instrumem

#endif
