#include "NodeLogger.h"
#include "llvm/IR/IRBuilder.h"

using namespace instrumem;

NodeLogger::NodeLogger() : FunctionPass(ID) {} // NodeLogger

bool NodeLogger::runOnFunction(Function &f) {
    
    return true;
}

void NodeLogger::visitLoadInst(LoadInst &inst) {
}

void NodeLogger::visitStoreInst(StoreInst &inst) {
}

char NodeLogger::ID = 0;
static RegisterPass<NodeLogger> X("nodelogger", "Node Logger Pass");
