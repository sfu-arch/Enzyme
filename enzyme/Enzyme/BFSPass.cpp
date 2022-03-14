//===- InstruMem.cpp ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements an LLVM memory operation instrumentation pass.
//
//===----------------------------------------------------------------------===//


#include "BFSPass.h"
#include "Utils.h"

#include "llvm/IR/IRBuilder.h"

#define REGION_COUNT 3

using namespace instrumem;

BFSPass::BFSPass() : FunctionPass(ID) {} // BFSPass

bool BFSPass::runOnFunction(Function &f) {
    std::vector<Value*> bfs_stack;
    for (auto &arg: f.args()) {
        args[static_cast<Value*>(&arg)] = std::vector<Value*>();
        g.AddNode(static_cast<Value*>(&arg));
        bfs_stack.push_back(&arg);
    }
    
    while (!bfs_stack.empty()) {
        auto curr = bfs_stack.front();
        bfs_stack.erase(bfs_stack.begin());
        for (auto i: curr->users()) {
            if (auto *I = dyn_cast<Instruction>(i)) {
                if (I->getParent()->getName().contains("invert") || !isValidInstruction(I)) 
                    continue;
                Value *child = I;
                if (isa<StoreInst>(I)) 
                    child = dyn_cast<StoreInst>(I)->getPointerOperand();
                if (!g().count(child))
                    g.AddNode(child);
                if (g[child]->visited)
                    continue;
                g[curr]->AddChild(g[child]);
                bfs_stack.push_back(child);
            }
        }
        g[curr]->visited = true;

    }

    auto levels = g.GetLevels();
    std::vector<std::pair<Value*, int>> vec = SortMap(levels);
    for (auto &it: vec) 
        g()[it.first]->AssignChildCost();

    // for (int j = 0; j < REGION_COUNT; j++) {
    //     int total_cost = g.GetTotalCost();
    //     int min_cost = total_cost;
    //     Node* min_node = nullptr;
    //     for (auto i: g()) {
    //         int prev_cost = i.second->cost;
    //         i.second->PushToTape();
    //         errs() << "Pushing " << *i.first << " changes the total cost from " << total_cost << " to " << g.GetTotalCost() << "\n";
    //         if (g.GetTotalCost() < min_cost) {
    //             min_cost = g.GetTotalCost();
    //             min_node = i.second;
    //         }
    //         i.second->UndoPushToTape(prev_cost);
    //     }
    //     if (min_node) {
    //         errs() << "Decided to push " << *min_node->GetValue() << "\n";
    //         min_node->PushToTape();
    //     }
    // }
    visit(&f);
    myfile.open ("forward.dot");
    myfile << "digraph G {\n";
    g.DumpForward(myfile);
    myfile << "}\n";
    myfile.close();

    myfile.open ("forward_and_reverse.dot");
    myfile << "digraph G {\n";
    myfile << "\tsubgraph Forward {\n";
    g.DumpForward(myfile);
    myfile << "\t}\n";
    myfile << "\tsubgraph Reverse {\n";
    g.DumpReverse(myfile);
    myfile << "\t}\n";
    myfile << "}\n";
    myfile.close();

    myfile.open ("stats.txt");
    myfile << "Register Count: " << g().size() << "\n";
    myfile << "Fifo size: " << g.GetFifoSize() << "\n";
    myfile << "Forward multicasts: " << g.GetParentChildCount() << "\n";
    myfile << "Reverse multicasts: " << 2 * g.GetParentChildCount() << "\n";
    myfile << "Number of recomputations: " << g.GetTotalCost() << "\n";

    myfile.close();
    return true;
}

void BFSPass::visitInstruction(Instruction &I) {
    if (!isValidInstruction(&I))
        return;
    if (g.contains(&I))
        I.setMetadata("node", MDNode::get(I.getContext(), MDString::get(I.getContext(), "true")));
}

std::map<Value*, int> Graph::GetLevels() { 
    std::map<Value*, int> levels;
    for (auto it = nodes.begin(); it != nodes.end(); it++)
        levels[it->first] = it->second->level;
    return levels;
}

int Graph::GetMaxLevel() {
    int max_level = 0;
    for (auto i: nodes) {
        if (i.second->level > max_level)
            max_level = i.second->level;
    }
    return max_level;
}

int Graph::GetFifoSize() {
    int max_level = GetMaxLevel();

    int fifo_size = 0;
    for (auto i: nodes) {
        fifo_size += i.second->GetFifoSize(max_level);
    }
    return fifo_size;
}

void Graph::PrintLevels() {
    // for (auto it = nodes.begin(); it != nodes.end(); it++)
    //     if (isa<llvm::Instruction>(it->first))
    //         CallPrintf((llvm::Instruction*)it->first, "Level: %d", {it->second->level});
        // errs() << it->first->getName() << ": " << it->second->level << "\n";
    // CallPrintf(llvm::Instruction *I, char *format, std::vector<llvm::Value *> args);
}

int Graph::GetTotalCost() {
    int cost = 0;
    for (auto i : nodes)
        cost += i.second->cost;
    return cost;
}

void Node::AddChild(Node *child) {
    children.insert(child);
    child->parents.insert(this);
    child->level = std::max(level + 1, child->level);
}

int Node::GetInstructionCost(Value *inst) {
    if (!isa<Instruction>(inst))
        return 1;
    if (isa<LoadInst>(inst))
        return 5;
    if (isa<StoreInst>(inst))
        return 1;
    if (isa<BinaryOperator>(inst))
        return 1;
    if (isa<UnaryOperator>(inst))
        return 1;
    if (isa<GetElementPtrInst>(inst))
        return 2;
    if (isa<AllocaInst>(inst))
        return 1;
    if (isa<CastInst>(inst))
        return 1;
    if (isa<PHINode>(inst))
        return 1;
    return 1;
}

void Node::PushToTape() {
    for (auto child: children) {
        child->PropagateCost(cost, 0);
    }
    cost = 0;
}

void Node::UndoPushToTape(int prev_cost) {
    cost = prev_cost;
    for (auto child: children) {
        child->PropagateCost(0, cost);
    }
}

void Node::AssignChildCost() {
    for (auto child : children)
        child->cost += cost + GetInstructionCost(value);
}

void Node::PropagateCost(int parent_old_cost, int parent_new_cost) {
    if (cost == 0) // Node is already on the tape
        return;
    int prev_cost = cost;
    cost += parent_new_cost - parent_old_cost;

    for (auto child : children)
        child->PropagateCost(prev_cost, cost);
}

bool instrumem::isValidInstruction(Instruction *inst) {
    return isa<LoadInst>(inst)  || isa<BinaryOperator>(inst) 
    || isa<UnaryOperator>(inst) || isa<GetElementPtrInst>(inst) || isa<AllocaInst>(inst) || 
    isa<CastInst>(inst) || isa<PHINode>(inst) || isa<CallInst>(inst) || isa<StoreInst>(inst);
}

std::vector<std::pair<Value*, int>> instrumem::SortMap(std::map<Value*, int> &map) {
    std::vector<std::pair<Value*, int>> vec;
    for (auto &it : map)
        vec.push_back(std::make_pair(it.first, it.second));

    std::sort(vec.begin(), vec.end(), [](std::pair<Value*, int> &a, std::pair<Value*, int> &b) {
        return a.second < b.second;
    });
    return vec;
}

void Node::DumpForward(std::ofstream &myfile) {
 
    if (value->getName().contains("'"))
        return;

    for (auto child : children) {
        myfile << "\t\t\"" << value->getNameOrAsOperand()  << '"' << " -> " << '"' << child->value->getNameOrAsOperand()  << '"' <<  "\n";

    }
}

void Node::DumpReverse(std::ofstream &myfile) {
    if (value->getName().contains("'"))
        return;
    for (auto parent : parents) {
        myfile << "\t\t\"g" << value->getNameOrAsOperand()  << '"' << " -> " << "\"g" << parent->value->getNameOrAsOperand()  << '"' <<  "\n";
        myfile << "\t\t\"" << parent->value->getNameOrAsOperand()  << '"' << " -> " << "\"g" << parent->value->getNameOrAsOperand()  << '"' <<  "\n";

    }
}

int Node::GetFifoSize(int max_level) {
    int fifo_size = 0;
    for (auto j: children) {
        fifo_size +=  max_level + 2 * (max_level - j->level) - level;
    }
    return fifo_size;
}

void Graph::DumpForward(std::ofstream &myfile) {
    for (auto i: nodes)
        i.second->DumpForward(myfile);
}

void Graph::DumpReverse(std::ofstream &myfile) {
    for (auto i: nodes)
        i.second->DumpReverse(myfile);
}

int Graph::GetParentChildCount() {
    int count = 0;
    for (auto i: nodes) {
        count += i.second->GetChildrenCount();
    }
    return count;
}

char BFSPass::ID = 0;
static RegisterPass<BFSPass> X("bfs", "BFS Pass");
