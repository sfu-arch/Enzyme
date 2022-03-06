#include "AddressInst.h"
#include "llvm/IR/IRBuilder.h"

using namespace instrumem;

AddressInstPass::AddressInstPass() : FunctionPass(ID) {} // AddressInstPass

bool AddressInstPass::runOnFunction(Function &f) {
    std::vector<Instruction*> toVisit;
    for (auto &BB : f) {
        for (auto &I : BB) {
            toVisit.push_back(&I);
        }
    }
    
    for (auto &I : toVisit) {
        visit(I);
    }
    return true;
}

void AddressInstPass::visitLoadInst(LoadInst &inst) {
    if (!inst.getParent()->getName().contains("invert"))
        callPrintf(&inst, "load %x\n", {inst.getOperand(0)});
}

void AddressInstPass::visitStoreInst(StoreInst &inst) {
    if (!inst.getParent()->getName().contains("invert"))
        callPrintf(&inst, "store %x\n", {inst.getPointerOperand()});
}
// This function calls the printf before the given instruction.
// HOW TO USE:
//     std::vector<Value*> args = {arg0, arg1, arg2, ...};
//     callPrintf(call_before, format, args);
// 
void AddressInstPass::callPrintf(Instruction *I, char *format, std::vector<Value *> args) {
    auto &m = *I->getModule();
    auto &context = m.getContext();

    PointerType *PrintfArgTy = PointerType::getUnqual(Type::getInt8Ty(context));
    FunctionType *PrintfTy = FunctionType::get(IntegerType::getInt32Ty(context), PrintfArgTy, /*IsVarArgs=*/true);
    FunctionCallee Printf = m.getOrInsertFunction("printf", PrintfTy);

    llvm::Constant *ResultFormatStr = llvm::ConstantDataArray::getString(context, format);

    Constant *ResultFormatStrVar =
        m.getOrInsertGlobal("ResultFormatStrIR" + std::to_string(isa<LoadInst>(I)) , ResultFormatStr->getType());
    dyn_cast<GlobalVariable>(ResultFormatStrVar)->setInitializer(ResultFormatStr);

    Instruction *ResultHeaderStrPtr = CastInst::CreatePointerCast(ResultFormatStrVar, PrintfArgTy, "");
    ResultHeaderStrPtr->insertAfter(I);
    std::vector<Value *> print_args = {ResultHeaderStrPtr};
    print_args.insert(print_args.end(), args.begin(), args.end());
    CallInst::Create(Printf, print_args, "", ResultHeaderStrPtr->getNextNode());
}

char AddressInstPass::ID = 0;
static RegisterPass<AddressInstPass> X("addinst", "Addinst Pass");
