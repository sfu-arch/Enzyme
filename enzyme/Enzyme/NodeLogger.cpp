#include "NodeLogger.h"
#include "llvm/IR/IRBuilder.h"
#include "Utils.h"

using namespace instrumem;

cl::opt<bool> ignore_reverse("ignore-reverse", cl::init(false),
                                 cl::Hidden,
                                 cl::desc("Doens't include reverse nodes in the analysis"));
extern "C" {
    int num_live_values = 0;
}
NodeLogger::NodeLogger() : FunctionPass(ID) {} // NodeLogger

void PrintFunctionArgs(Function &f) {
    Instruction *first_inst = &f.front().front();

    for (int i=0; i<f.arg_size(); i++) {
        ConstantInt *id = ConstantInt::get(Type::getInt32Ty(first_inst->getContext()), i+1);
        std::string write_format = "F_Node: " + f.getArg(i)->getNameOrAsOperand() + ", Parent: %x, load\n";

        CallPrintf(first_inst, &write_format[0], {}, write_format);
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
            if (!ignore_reverse || !cast<Instruction>(i.first)->getParent()->getName().contains("invert") )
                visit(cast<Instruction>(i.first));

    PrintFunctionArgs(f);
    errs() << "Live value count: " << num_live_values << "\n";
    return true;
}

std::string ModePrefix(Instruction *i) {
    if (IsReverseOp(i))
        return "R_";
    return "F_";
}

void NodeLogger::visitLoadInst(LoadInst &inst) {
    std::string write_format = ModePrefix(&inst) + "Node: " + inst.getNameOrAsOperand() + ", Parent: %x, load\n";
    CallPrintf(&inst, &write_format[0], {inst.getPointerOperand()}, write_format);
}


void NodeLogger::visitStoreInst(StoreInst &inst) {
    std::string write_format = ModePrefix(&inst) + "Node: %x, Parent: " + inst.getValueOperand()->getNameOrAsOperand()+ ", store\n";
    auto *value_id = ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[inst.getValueOperand()]);
    CallPrintf(&inst, &write_format[0], {inst.getPointerOperand()}, write_format);
}

std::string GenerateWriteFormat(Instruction &inst, std::map<Value*, unsigned> &node_ids) {
    std::string write_format = "";
    if (isa<Instruction>(inst)) {
        if (isa<BinaryOperator>(inst)) {
            write_format += "arithmetic";

            switch (inst.getOpcode())
            {
            case Instruction::FMul:
                write_format += "_mul";
                break;
            case Instruction::FDiv:
                write_format += "_div";
                break;
            case Instruction::Or:
                write_format += "_or";
                break;
            default:
                break;
            }
            write_format += "\n";

        } else{
            write_format += std::string(inst.getOpcodeName())+  "\n";
        }
    } else {
        write_format += "not_inst\n";
    }
    return write_format;
}


void NodeLogger::visitInstruction(Instruction &inst) {
    if (isa<ReturnInst>(inst) || isa<BranchInst>(inst))
        return;
    std::string write_format = "Node: " + inst.getNameOrAsOperand() + ", ";
    ConstantInt *id = ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[&inst]);
    std::vector<Value*> args={};

    for (int i=0; i < inst.getNumOperands(); i++) {
        Value *operand = inst.getOperand(i);
        if (!isa<Constant>(operand)) {
            // args.push_back(ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[operand]));
            write_format += "Parent: " + operand->getNameOrAsOperand() + ", ";
        }
    }

    write_format += GenerateWriteFormat(inst, node_ids);
    write_format =  ModePrefix(&inst) + write_format;
    CallPrintf(&inst, &write_format[0], {}, write_format);
}

char NodeLogger::ID = 0;
static RegisterPass<NodeLogger> X("nodelogger", "Node Logger Pass");
