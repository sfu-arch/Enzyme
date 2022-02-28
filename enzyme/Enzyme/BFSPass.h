
#ifndef BFS_H
#define BFS_H

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

namespace instrumem
{

class Graph {
    class Node {
    public:
        Node(Value *v) : value(v), level(0), cost(0) {}
        void AddChild(Node *child) {
            children.insert(child);
            child->parents.insert(this);
            child->level = std::max(level + 1, child->level);
        }
        void UpdateChildCost() {
            for (auto child : children)
                child->cost += cost + 1;
        }
        int level;
        int cost;
    private:
        Value *value;

        std::set<Node *> children;
        std::set<Node *> parents;
    };
    public:
        Graph() {}
        
        void AddNode(Value *v) { nodes[v] = new Node(v); }
        Node* operator[] (Value *v) { return nodes[v]; }
        
        std::map<Value*, Node*> operator() () { return nodes; }
        std::map<Value*, int> GetLevels() { 
            std::map<Value*, int> levels;
            for (auto it = nodes.begin(); it != nodes.end(); it++)
                levels[it->first] = it->second->level;
            return levels;
        }
    private:
        std::map<Value*, Node*> nodes;
    
};

struct BFSPass : public llvm::FunctionPass,
                        llvm::InstVisitor<BFSPass> {
    public:
        static char ID;
        BFSPass();
        bool runOnFunction(llvm::Function &f) override;

    private:
        std::map<llvm::Value*, std::vector<llvm::Value*>> args;

};

} // namespace instrumem

#endif
