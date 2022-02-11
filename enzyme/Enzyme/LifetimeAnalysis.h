
#ifndef LIFE_H
#define LIFE_H

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

namespace life
{

    struct LifetimePass : public llvm::FunctionPass,
                           llvm::InstVisitor<LifetimePass>
    {
    
    private:
        std::map<std::string, std::pair<uint32_t, uint32_t>> memOps;
        std::set<std::string> edges;

        uint32_t getLevel(Value *V) {
            if (!isa<Instruction>(*V))
                return 0;
            Instruction &I = cast<Instruction>(*V);
            auto *N = I.getMetadata("level");
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
    public:
        static char ID;
        llvm::Function *F = nullptr;

        LifetimePass();

        virtual void getAnalysisUsage(AnalysisUsage &AU) const override
        {
            // AU.addRequired<helpers::LabelUID>();
        }

        bool runOnFunction(llvm::Function &f) override;

        void visitInstruction(Instruction &ins);
    };

} // namespace instrumem

#endif
