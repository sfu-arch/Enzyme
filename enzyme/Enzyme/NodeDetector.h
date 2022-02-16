
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

#define NODE_SIZE 158

namespace instrumem
{

    struct NodeDetectorPass : public llvm::FunctionPass,
                           llvm::InstVisitor<NodeDetectorPass>
    {
    
    private:

        bool isDeriv(Value *I) {
            return isa<Instruction>(I) && hasMetadata((llvm::Instruction*)I, "deriv");
        }
        bool isReverseOp(Value *I) {
            return isa<Instruction>(I) && hasMetadata((llvm::Instruction*)I, "reverseOp");
        }
        
        bool isDerivStore(Value *I) {
            return isa<Instruction>(I) && hasMetadata((llvm::Instruction*)I, "derivStore");
        }
        void appendNode(Instruction* I, std::unordered_map<std::string, std::vector<std::string>> *nodeMap);
        
    public:
        static char ID;
        llvm::Function *F = nullptr;

        NodeDetectorPass();

        bool runOnFunction(llvm::Function &f) override;
        void visitStoreInst(llvm::StoreInst &I);
        void visitBitCastInst(BitCastInst &ins) {}
        void visitCallInst(CallInst &ins) {}

        void visitInstruction(Instruction &ins);
        void visitLoadInst(llvm::LoadInst &I);
        void visitAllocaInst(llvm::AllocaInst &I);
        void visitGetElementPtrInst(llvm::GetElementPtrInst &I);
        void visitTruncInst(llvm::TruncInst &I);
        void visitSExtInst(llvm::SExtInst &I);



    };

} // namespace instrumem

#endif
