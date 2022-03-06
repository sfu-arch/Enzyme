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
#include "llvm/IR/IRBuilder.h"

using namespace instrumem;

BFSPass::BFSPass() : FunctionPass(ID) {} // BFSPass

bool BFSPass::runOnFunction(Function &f) {
    for (auto &arg: f.args())
        args[static_cast<Value*>(&arg)] = std::vector<Value*>();

    g.AddNode(f.getArg(0));
    
    std::vector<Value*> bfs_stack;
    bfs_stack.push_back(f.getArg(0));
    while (!bfs_stack.empty()) {
        auto curr = bfs_stack.front();
        bfs_stack.erase(bfs_stack.begin());
        for (auto i: curr->users()) {
            if (auto *I = dyn_cast<Instruction>(i)) {
                if (I->getParent()->getName().contains("invert") || !isValidInstruction(I)) 
                    continue;
                if (!g().count(I))
                    g.AddNode(I);

                g[curr]->AddChild(g[I]);
                bfs_stack.push_back(I);
            }
        }
    }

    auto levels = g.GetLevels();
    std::vector<std::pair<Value*, int>> vec = SortMap(levels);
    for (auto &it: vec) 
        g()[it.first]->AssignChildCost();

    int total_cost = g.GetTotalCost();
    for (auto i: g()) {
        int prev_cost = i.second->cost;
        i.second->PushToTape();
        errs() << "Pushing " << *i.first << " changes the total cost from " << total_cost << " to " << g.GetTotalCost() << "\n";
        i.second->UndoPushToTape(prev_cost);
    }
    visit(&f);
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

int Graph::GetTotalCost() {
    int cost = 0;
    for (auto i : nodes)
        cost += i.second->cost;
    return cost;
}

void Graph::Node::AddChild(Node *child) {
    children.insert(child);
    child->parents.insert(this);
    child->level = std::max(level + 1, child->level);
}

int Graph::Node::GetInstructionCost(Value *inst) {
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
        return 1;
    if (isa<AllocaInst>(inst))
        return 1;
    return 0;
}

void Graph::Node::PushToTape() {
    for (auto child: children) {
        child->PropagateCost(cost, 0);
    }
    cost = 0;
}

void Graph::Node::UndoPushToTape(int prev_cost) {
    cost = prev_cost;
    for (auto child: children) {
        child->PropagateCost(0, cost);
    }
}

void Graph::Node::AssignChildCost() {
    for (auto child : children)
        child->cost += cost + GetInstructionCost(value);
}

void Graph::Node::PropagateCost(int parent_old_cost, int parent_new_cost) {
    int prev_cost = cost;
    cost += parent_new_cost - parent_old_cost;
    for (auto child : children)
        child->PropagateCost(prev_cost, cost);
}

bool instrumem::isValidInstruction(Instruction *inst) {
    return isa<LoadInst>(inst) || isa<StoreInst>(inst) || isa<BinaryOperator>(inst) 
    || isa<UnaryOperator>(inst) || isa<GetElementPtrInst>(inst) || isa<AllocaInst>(inst);
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

char BFSPass::ID = 0;
static RegisterPass<BFSPass> X("bfs", "BFS Pass");
