
#ifndef INSTRUMEM_H
#define INSTRUMEM_H

#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <map>


using namespace llvm;

namespace instrumem
{

    struct InstruMemPass : public llvm::FunctionPass,
                           llvm::InstVisitor<InstruMemPass>
    {
    
    private:
        const std::string pre = "__InstruMem_";
        std::map<std::string, std::pair<uint32_t, uint32_t>> memOps;
        uint32_t getCalcCost(Value *V) {
            if (!isa<Instruction>(*V))
                return 0;
            Instruction &I = cast<Instruction>(*V);
            auto *N = I.getMetadata("calcCost");
            auto *S = dyn_cast<MDString>(N->getOperand(0));
            return stoi(S->getString().str());
        };

        uint32_t getTapeCost(Value *V) {
            if (!isa<Instruction>(*V))
                return 0;
            Instruction &I = cast<Instruction>(*V);
            auto *N = I.getMetadata("mode");
            auto S = dyn_cast<MDString>(N->getOperand(0));
            auto mode = S->getString().str();
            if (mode == "forward")
                return 1;

            N = I.getMetadata("tapeCost");
            S = dyn_cast<MDString>(N->getOperand(0));
            return stoi(S->getString().str());
        }

        bool isReverseNode(Value *V);
    public:
        static char ID;
        llvm::Function *F = nullptr;

        InstruMemPass();

        virtual void getAnalysisUsage(AnalysisUsage &AU) const override
        {
            // AU.addRequired<helpers::LabelUID>();
        }

        bool runOnFunction(llvm::Function &f) override;

        void visitBinaryOperator(BinaryOperator &ins);
        void visitStoreInst(StoreInst &ins);
        void visitLoadInst(LoadInst &ins);

    };

} // namespace instrumem

#endif
