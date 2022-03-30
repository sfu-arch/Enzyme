#include "NodeLogger.h"
#include "llvm/IR/IRBuilder.h"
#include "Utils.h"

using namespace instrumem;

NodeLogger::NodeLogger() : FunctionPass(ID) {} // NodeLogger

void PrintFunctionArgs(Function &f) {
    Instruction *first_inst = &f.front().front();

    for (int i=0; i<f.arg_size(); i++) {
        ConstantInt *id = ConstantInt::get(Type::getInt32Ty(first_inst->getContext()), i+1);
        CallPrintf(first_inst, "Node: %u, Arg\n", {id}, "0");
    }

}

bool NodeLogger::runOnFunction(Function &f) {
    errs() << "Creatint DDDG\n";

    uint32_t index = f.arg_size()+1;
    
    for (auto &bb: f) {
        for (auto &i: bb) {
            node_ids[&i] = index++;
        }
    }
    
    for (auto i: node_ids)
        if (isa<Instruction>(i.first))
            visit(cast<Instruction>(i.first));

    PrintFunctionArgs(f);
    
    return true;
}

void NodeLogger::visitLoadInst(LoadInst &inst) {
    auto *load_id = ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[&inst]);
    CallPrintf(&inst, "Node: %u, Parent: %x, load\n", {load_id, inst.getPointerOperand()}, "1");
}


void NodeLogger::visitStoreInst(StoreInst &inst) {
    auto *store_id = ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[&inst]);
    auto *value_id = ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[inst.getValueOperand()]);

    CallPrintf(&inst, "Node: %u, Parent: %d, Parent: %x, store\n", {store_id, value_id, inst.getPointerOperand()}, "2");
}

std::string GenerateWriteFormat(Instruction &inst, std::map<Value*, unsigned> &node_ids) {
    std::string write_format = "";
    if (isa<Instruction>(inst)) {
        if (isa<BinaryOperator>(inst)) {
            write_format += "Arithmetic\n";
            errs() << node_ids[&inst] << ": " << inst << "\n";
        } else{
            write_format += std::string(inst.getOpcodeName())+  "\n";
        }
    } else {
        write_format += "Insts\n";
    }
    return write_format;
}


void NodeLogger::visitInstruction(Instruction &inst) {
    if (isa<ReturnInst>(inst) || isa<BranchInst>(inst))
        return;
    std::string write_format = "Node: %u, ";
    ConstantInt *id = ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[&inst]);
    std::vector<Value*> args={id};

    for (int i=0; i < inst.getNumOperands(); i++) {
        Value *operand = inst.getOperand(i);
        if (!isa<Constant>(operand)) {
            args.push_back(ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[operand]));
            write_format += "Parent: %u, ";
        }
    }

    write_format += GenerateWriteFormat(inst, node_ids);

    CallPrintf(&inst, &write_format[0], args, std::to_string(args.size()) + write_format);
}

char NodeLogger::ID = 0;
static RegisterPass<NodeLogger> X("nodelogger", "Node Logger Pass");
