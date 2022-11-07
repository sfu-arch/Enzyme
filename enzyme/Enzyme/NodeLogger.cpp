#include "NodeLogger.h"
#include "llvm/IR/IRBuilder.h"
#include "Utils.h"
#include "llvm/Option/Arg.h"

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
        std::string write_format = "F_Node: " + f.getArg(i)->getNameOrAsOperand() + ", Parent: root, arg\n";
        CallPrintf(first_inst, &write_format[0], {}, write_format);
    }

}

void LogCrossingEdge(Instruction *inst, std::ofstream &myfile) {
    if (!IsReverseOp(inst) || isa<LoadInst>(inst) || isa<StoreInst>(inst) || isa<CallInst>(inst)) // Only considering reverse ops
        return;

    for (int i=0; i<inst->getNumOperands(); i++) {
        if (isa<Instruction>(inst->getOperand(i))) 
            if (!IsReverseOp(inst->getOperand(i))) // If I'm a reverse and I have a parent in the forward
                myfile << inst->getOperand(i)->getNameOrAsOperand() << "\n";
    }
} 

bool NodeLogger::runOnFunction(Function &f) {
    errs() << "Creatint DDDG\n";
    uint32_t index = f.arg_size()+1;
    std::vector<Instruction*> insts;
    for (auto &bb: f) {
        for (auto &i: bb) {
            // node_ids[&i] = index++;
            if (i.getOpcode() != 2 && i.getOpcode() != 57) 
                insts.push_back(&i);
        }
    }
    myfile.open("crossing_nodes.txt");
    for (auto i: insts)
        if (i && isa<Instruction>(i)) {
            if (!ignore_reverse || !cast<Instruction>(i)->getParent()->getName().contains("invert") ) {
                visit(cast<Instruction>(i));
            }
            LogCrossingEdge(cast<Instruction>(i), myfile);
        }
    myfile.close();
    PrintFunctionArgs(f);
    // errs() << "Live value count: " << num_live_values << "\n";
    return true;
}

std::string ModePrefix(Instruction *i) {
    if (IsReverseOp(i))
        return "R_";
    return "F_";
}

void NodeLogger::visitLoadInst(LoadInst &inst) {
    // Don't log the loads that aren't tagged as read (not Tloads)
    if (!(inst.hasMetadata("read") || inst.hasMetadata("write")))
        return;
    std::string write_format = ModePrefix(&inst) + "Node: " + inst.getNameOrAsOperand() + ", Parent: %x, load\n";
    CallPrintf(&inst, &write_format[0], {inst.getPointerOperand()}, write_format);
}


void NodeLogger::visitStoreInst(StoreInst &inst) {
    // Don't log the loads that aren't tagged as write (not Tstores)
    if (!inst.hasMetadata("write"))
        return;
    if (isa<Constant>(inst.getValueOperand()))
        return;
    if (inst.getPointerOperand()->getNameOrAsOperand().find("'") != std::string::npos)
        return;
    std::string write_format = ModePrefix(&inst) + "Node: %x, Parent: " + inst.getValueOperand()->getNameOrAsOperand()+ ", store\n";
    // auto *value_id = ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[inst.getValueOperand()]);
    CallPrintf(&inst, &write_format[0], {inst.getPointerOperand()}, write_format);
}

std::string GenerateWriteFormat(Instruction &inst, std::map<Value*, unsigned> &node_ids) {
    std::string write_format = "";
    if (isa<Instruction>(inst)) {
        if (isa<BinaryOperator>(inst)) {
            write_format += "arithmetic_" + std::string(inst.getOpcodeName());
            write_format += "\n";

        } else if (isa<UnaryInstruction>(inst)) {
            if (isa<AllocaInst>(inst)) {
                write_format += std::string(inst.getOpcodeName())+  "\n";
            } else {
                write_format += "arithmetic_" + std::string(inst.getOpcodeName())+  "\n";
            }
        } else{
            write_format += std::string(inst.getOpcodeName())+  "\n";
        }
    } else {
        write_format += "not_inst\n";
    }
    return write_format;
}

void NodeLogger::visitAllocaInst(AllocaInst &inst) {
    if (inst.hasMetadata("push")) {
        std::string write_format = "Push!\n";
        CallPrintf(&inst, &write_format[0], {}, write_format);
    }
}

void NodeLogger::visitInstruction(Instruction &inst) {
    if (inst.getOpcode() == 57)
        return;
    if (isa<ReturnInst>(inst) || isa<BranchInst>(inst) || isa<SelectInst>(inst) | isa<PHINode>(inst) || isa<AllocaInst>(inst))
        return;

    std::string write_format = "Node: " + inst.getNameOrAsOperand() + ", ";
    // ConstantInt *id = ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[&inst]);
    std::vector<Value*> args={};
    for (int i=0; i < inst.getNumOperands(); i++) {
        Value *operand = inst.getOperand(i);
        if (operand && !isa<Constant>(operand)) {
            // args.push_back(ConstantInt::get(Type::getInt32Ty(inst.getContext()), node_ids[operand]));
            write_format += "Parent: " + operand->getNameOrAsOperand() + ", ";
            // write_format += "Parent: " + std::to_string(node_ids[operand]) + ", ";
        }
    }

    write_format += GenerateWriteFormat(inst, node_ids);
    write_format =  ModePrefix(&inst) + write_format;
    CallPrintf(&inst, &write_format[0], {}, write_format + std::to_string(node_ids[&inst]));
}

char NodeLogger::ID = 0;
static RegisterPass<NodeLogger> X("nodelogger", "Node Logger Pass");
