
#ifndef INSTRUMEM_H
#define INSTRUMEM_H

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

    struct InstruMemPass : public llvm::FunctionPass,
                           llvm::InstVisitor<InstruMemPass>
    {

    private:
        const std::string pre = "__InstruMem_";

        uint32_t getCost(Value *V) {
            if (!isa<Instruction>(*V))
                return 0;
            Instruction &I = cast<Instruction>(*V);
            auto *N = I.getMetadata("cost");
            auto *S = dyn_cast<MDString>(N->getOperand(0));
            return stoi(S->getString().str());
        };

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

    };

} // namespace instrumem

#endif
