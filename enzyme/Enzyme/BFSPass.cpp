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

#include <sstream>

#include "BFSPass.h"
#include "Utils.h"

#include "llvm/IR/IRBuilder.h"

#define REGION_COUNT 3

using namespace instrumem;

BFSPass::BFSPass() : FunctionPass(ID) {} // BFSPass
std::string GetOpName(Value *op);

bool BFSPass::runOnFunction(Function &f) {
  std::vector<Value *> bfs_stack;
  for (auto &arg : f.args()) {
    args[static_cast<Value *>(&arg)] = std::vector<Value *>();
    g.AddNode(static_cast<Value *>(&arg));
    bfs_stack.push_back(&arg);
  }

  while (!bfs_stack.empty()) {
    auto curr = bfs_stack.front();
    bfs_stack.erase(bfs_stack.begin());
    for (auto i : curr->users()) {
      if (auto *I = dyn_cast<Instruction>(i)) {
        Value *child = I;
        if (!isValidInstruction(I))
          continue;
        if (isa<StoreInst>(I))
          child = dyn_cast<StoreInst>(I)->getPointerOperand();
        if (!g().count(child))
          g.AddNode(child);

        g[curr]->AddChild(g[child]);

        if (g[child]->visited)
          continue;
        bfs_stack.push_back(child);
      } else {
        errs() << "Not an instruction << " << *i << "\n";
      }
    }
    g[curr]->visited = true;
  }

  auto levels = g.GetLevels();
  std::vector<std::pair<Value *, int>> vec = SortMap(levels);
  for (auto &it : vec)
    g()[it.first]->AssignChildCost();

  // for (int j = 0; j < REGION_COUNT; j++) {
  //     int total_cost = g.GetTotalCost();
  //     int min_cost = total_cost;
  //     Node* min_node = nullptr;
  //     for (auto i: g()) {
  //         int prev_cost = i.second->cost;
  //         i.second->PushToTape();
  //         errs() << "Pushing " << *i.first << " changes the total cost from "
  //         << total_cost << " to " << g.GetTotalCost() << "\n"; if
  //         (g.GetTotalCost() < min_cost) {
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
  myfile.open("forward.dot");
  myfile << "digraph G {\n";
  g.DumpForward(myfile);
  myfile << "}\n";
  myfile.close();

  myfile.open("forward_and_reverse.dot");
  myfile << "digraph G {\n";
  myfile << "\tsubgraph Forward {\n";
  g.DumpForward(myfile);
  myfile << "\t}\n";
  myfile << "\tsubgraph Reverse {\n";
  g.DumpReverse(myfile);
  myfile << "\t}\n";
  myfile << "}\n";
  myfile.close();

  // myfile.open ("recompute.dot");
  // myfile << "digraph G {\n";
  // myfile << "\tsubgraph Forward {\n";
  // g.DumpForward(myfile);
  // myfile << "\t}\n";
  // myfile << "\tsubgraph Reverse {\n";
  // g.DumpRecompute(myfile);
  // myfile << "\t}\n";
  // myfile << "}\n";
  // myfile.close();

  // myfile.open ("store.dot");
  // myfile << "digraph G {\n";
  // myfile <<  "\t{\n" <<"\t\tnode [shape=Mrecord, color=green, style=dashed,
  // width=8];\n\t\tTape\n\t}\n"; myfile << "\tsubgraph Forward {\n";
  // g.DumpForward(myfile);
  // myfile << "\t}\n";
  // myfile << "\tsubgraph Reverse {\n";
  // g.DumpStore(myfile);
  // myfile << "\t}\n";
  // myfile << "}\n";
  // myfile.close();

  // myfile.open ("stats.txt");
  // myfile << "Register Count: " << g().size() << "\n";
  // myfile << "Fifo size: " << g.GetFifoSize() << "\n";
  // myfile << "Forward multicasts: " << g.GetParentChildCount() << "\n";
  // myfile << "Reverse multicasts: " << 2 * g.GetParentChildCount() << "\n";
  // myfile << "Number of recomputations: " << g.GetTotalCost() << "\n";

  // myfile.close();
  return true;
}

void BFSPass::visitInstruction(Instruction &I) {
  if (!isValidInstruction(&I))
    return;
  if (g.contains(&I))
    I.setMetadata("node", MDNode::get(I.getContext(),
                                      MDString::get(I.getContext(), "true")));
}

std::map<Value *, int> Graph::GetLevels() {
  std::map<Value *, int> levels;
  for (auto it = nodes.begin(); it != nodes.end(); it++)
    levels[it->first] = it->second->level;
  return levels;
}

int Graph::GetMaxLevel() {
  int max_level = 0;
  for (auto i : nodes) {
    if (i.second->level > max_level)
      max_level = i.second->level;
  }
  return max_level;
}

int Graph::GetFifoSize() {
  int max_level = GetMaxLevel();

  int fifo_size = 0;
  for (auto i : nodes) {
    fifo_size += i.second->GetFifoSize(max_level);
  }
  return fifo_size;
}

void Graph::PrintLevels() {
  // for (auto it = nodes.begin(); it != nodes.end(); it++)
  //     if (isa<llvm::Instruction>(it->first))
  //         CallPrintf((llvm::Instruction*)it->first, "Level: %d",
  //         {it->second->level});
  // errs() << it->first->getName() << ": " << it->second->level << "\n";
  // CallPrintf(llvm::Instruction *I, char *format, std::vector<llvm::Value *>
  // args);
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
  for (auto child : children) {
    child->PropagateCost(cost, 0);
  }
  cost = 0;
}

void Node::UndoPushToTape(int prev_cost) {
  cost = prev_cost;
  for (auto child : children) {
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
  return isa<LoadInst>(inst) || isa<BinaryOperator>(inst) ||
         isa<UnaryOperator>(inst) || isa<GetElementPtrInst>(inst) ||
         isa<AllocaInst>(inst) || isa<CastInst>(inst) || isa<PHINode>(inst) ||
         isa<CallInst>(inst) || isa<StoreInst>(inst) || isa<BitCastInst>(inst);
}

std::vector<std::pair<Value *, int>>
instrumem::SortMap(std::map<Value *, int> &map) {
  std::vector<std::pair<Value *, int>> vec;
  for (auto &it : map)
    vec.push_back(std::make_pair(it.first, it.second));

  std::sort(vec.begin(), vec.end(),
            [](std::pair<Value *, int> &a, std::pair<Value *, int> &b) {
              return a.second < b.second;
            });
  return vec;
}

void Node::DumpForward(std::ofstream &myfile) {

  // if (value->getName().contains("'"))
  //     return;

  if (is_memop)
    myfile << "\t\t\"" << GetNodeName() << "\" [color = gray style=filled];"
           << "\n";
  if (isa<BinaryOperator>(value) || isa<UnaryOperator>(value))
    myfile << "\t\t\"" << GetNodeName() << "\" [color = yellow style=filled];"
           << "\n";
  for (auto child : children) {
    myfile << "\t\t\"" << GetNodeName() << '"' << " -> " << '"'
           << child->GetNodeName() << "\" "
           << "\n";
  }
}

std::string Node::GetNodeName() {
  std::string prefix = value->getNameOrAsOperand()[0] == '%' ? "$" : "";
  std::string parent =
      isa<Instruction>(value)
          ? " : " + ((Instruction *)value)->getParent()->getName().str()
          : "";
  return prefix + value->getNameOrAsOperand() + " : " + GetOpName(value) +
         parent;
}

void Node::DumpReverse(std::ofstream &myfile) {
  // if (value->getName().contains("'"))
  //     return;
  for (auto parent : parents) {
    myfile << "\t\t\"g" << GetNodeName() << '"' << " -> "
           << "\"g" << parent->GetNodeName() << '"' << "\n";
    myfile << "\t\t\"" << parent->GetNodeName() << '"' << " -> "
           << "\"g" << GetNodeName() << '"' << "\n";
  }
}

void Node::DumpRecompute(std::ofstream &myfile, int max_level) {
  if (value->getName().contains("'"))
    return;
  for (auto parent : parents) {
    myfile << "\t\t\"g" << value->getNameOrAsOperand() << '"' << " -> "
           << "\"g" << parent->value->getNameOrAsOperand() << '"' << "\n";
    if (GetFifoSizeBetweenNodes(max_level, parent->level, level) > 2) {
      myfile << "\t\t\"" << value->getNameOrAsOperand() << "_"
             << parent->value->getNameOrAsOperand() << '"' << " -> "
             << "\"g" << value->getNameOrAsOperand() << '"' << "[color=" << '"'
             << "red" << '"' << "]"
             << "\n";
      myfile << parent->RecurseToRoot(value->getNameOrAsOperand());
    } else {
      myfile << "\t\t\"" << parent->value->getNameOrAsOperand() << '"' << " -> "
             << "\"g" << value->getNameOrAsOperand() << '"' << "\n";
    }
  }
}

void Node::DumpStore(std::ofstream &myfile) {
  if (value->getName().contains("'"))
    return;
  for (auto parent : parents) {
    myfile << "\t\t\"g" << value->getNameOrAsOperand() << '"' << " -> "
           << "\"g" << parent->value->getNameOrAsOperand() << '"' << "\n";
    myfile << "\t\t\"" << parent->value->getNameOrAsOperand() << '"' << " -> "
           << "Tape"
           << "\n";
    myfile << "\t\tTape -> "
           << "\"g" << value->getNameOrAsOperand() << '"' << "\n";
  }
}

std::string Node::RecurseToRoot(std::string prefix) {
  std::stringstream ss;
  for (auto parent : parents) {
    ss << "\t\t\"" << prefix << "_" << parent->value->getNameOrAsOperand()
       << '"' << " -> " << '"' << prefix << '_' << value->getNameOrAsOperand()
       << '"' << "[color=" << '"' << "red" << '"' << "]"
       << "\n";
    ss << parent->RecurseToRoot(prefix);
  }
  return ss.str();
}

int Node::GetFifoSize(int max_level) {
  int fifo_size = 0;
  for (auto j : children) {
    fifo_size += max_level + 2 * (max_level - j->level) - level;
  }
  return fifo_size;
}

int Node::GetFifoSizeBetweenNodes(int max_level, int parent_level,
                                  int child_level) {
  return max_level + 2 * (max_level - child_level) - parent_level;
}

void Graph::DumpForward(std::ofstream &myfile) {
  for (auto i : nodes)
    i.second->DumpForward(myfile);
}

void Graph::DumpReverse(std::ofstream &myfile) {
  for (auto i : nodes)
    i.second->DumpReverse(myfile);
}

void Graph::DumpRecompute(std::ofstream &myfile) {
  int max_level = GetMaxLevel();
  for (auto i : nodes)
    i.second->DumpRecompute(myfile, max_level);
}

void Graph::DumpStore(std::ofstream &myfile) {
  for (auto i : nodes)
    i.second->DumpStore(myfile);
}

int Graph::GetParentChildCount() {
  int count = 0;
  for (auto i : nodes) {
    count += i.second->GetChildrenCount();
  }
  return count;
}

std::string GetOpName(Value *op) {
  if (!isa<Instruction>(op))
    return "";

  int opcode = cast<Instruction>(op)->getOpcode();
  if (opcode == Instruction::PHI)
    return "PHI";
  if (opcode == Instruction::Alloca)
    return "Alloca";
  if (opcode == Instruction::Load)
    return "Load";
  if (opcode == Instruction::Store)
    return "Store";
  if (opcode == Instruction::FAdd)
    return "FAdd";
  if (opcode == Instruction::FSub)
    return "FSub";
  if (opcode == Instruction::FMul)
    return "FMul";
  if (opcode == Instruction::FDiv)
    return "FDiv";

  return std::to_string(opcode);
}
char BFSPass::ID = 0;
static RegisterPass<BFSPass> X("bfs", "BFS Pass");
