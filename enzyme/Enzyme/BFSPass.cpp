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

bool isValidInstruction(Instruction *inst) {
    return isa<LoadInst>(inst) || isa<StoreInst>(inst) || isa<BinaryOperator>(inst) 
    || isa<UnaryOperator>(inst) || isa<GetElementPtrInst>(inst) || isa<AllocaInst>(inst);
}

std::vector<std::pair<Value*, int>> SortMap(std::map<Value*, int> &map) {
    std::vector<std::pair<Value*, int>> vec;
    for (auto &it : map)
        vec.push_back(std::make_pair(it.first, it.second));

    std::sort(vec.begin(), vec.end(), [](std::pair<Value*, int> &a, std::pair<Value*, int> &b) {
        return a.second < b.second;
    });
    return vec;
}

bool BFSPass::runOnFunction(Function &f)
{
    for (auto &arg: f.args())
        args[static_cast<Value*>(&arg)] = std::vector<Value*>();

    Graph g;
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
        g()[it.first]->UpdateChildCost();

    for (auto i: g())
        errs() << *i.first << ": " << i.second->cost << "\n";

    return true;
}

char BFSPass::ID = 0;
static RegisterPass<BFSPass> X("bfs", "BFS Pass");
