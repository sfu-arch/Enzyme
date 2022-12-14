#include "LayerGenerator.h"

#include "CacheUtility.h"

#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <set>

extern "C" {
extern llvm::cl::opt<int> BIN_SIZE;
}

using namespace llvm;

namespace diffman {
namespace {
// Creates Conditional push/pop operations at the given instruction.
void CreateConditionalStreamCommand(llvm::Instruction *start_inst,
                                    llvm::Instruction *ind_var, int tape_ops,
                                    std::string command) {
  int interval = BIN_SIZE / tape_ops;
  auto Int64Ty = Type::getInt64Ty(ind_var->getContext());
  auto mod_inst = llvm::BinaryOperator::Create(
      llvm::BinaryOperator::URem, ind_var,
      llvm::ConstantInt::get(Int64Ty, interval), "mod", start_inst);

  auto icmp_inst = llvm::CmpInst::Create(
      llvm::Instruction::ICmp, llvm::CmpInst::ICMP_EQ, mod_inst,
      llvm::ConstantInt::get(Int64Ty, interval - 1), "cmp");
  icmp_inst->insertAfter(mod_inst);

  auto new_inst = llvm::SplitBlockAndInsertIfThen(icmp_inst, start_inst, false);

  setBasicBlockMetadata(new_inst, tape_ops * interval, command);
}
} // namespace

char LayerGenerator::ID = 0;

// Todo(@milad): Fix the bounderis for the push/pop operations.
bool LayerGenerator::runOnFunction(Function &f) {
  llvm::DominatorTree DT = llvm::DominatorTree();
  DT.recalculate(f);
  // generate the LoopInfoBase for the current function
  auto loopInfo = new llvm::LoopInfoBase<llvm::BasicBlock, llvm::Loop>();
  loopInfo->releaseMemory();
  loopInfo->analyze(DT);
  errs() << "Layer Gen Pass\n";

  std::set<llvm::BasicBlock *> visited;
  auto loops = loopInfo->getLoopsInPreorder();
  // Traverse the loop tree in preorder and instrument the basic blocks for
  // pushes and pops
  for (auto it = loops.rbegin(); it != loops.rend(); ++it) {
    BasicBlock *header = (*it)->getHeader();
    LoopContext lc;
    bool inLoop = gutils_->getContext(header, lc);
    if (!gutils_->getContext(header, lc))
      continue;
    BasicBlock *fwd_header = header;

    if (gutils_->forward_bb_writes_.find(fwd_header) ==
        gutils_->forward_bb_writes_.end())
      continue;
    int fwd_writes = gutils_->forward_bb_writes_[fwd_header];
    if (fwd_writes > BIN_SIZE) // No need to instrument like this.
      continue;

    llvm::PHINode *fwd_indvar = lc.var;
    assert(fwd_indvar);

    llvm::AllocaInst *rev_indvar = lc.antivaralloc;
    assert(rev_indvar);

    llvm::BasicBlock *rev_bb = gutils_->reverseBlocks[fwd_header].back();
    assert(rev_bb);
    int rev_reads = gutils_->reverse_bb_reads_[rev_bb];
    CreateConditionalStreamCommand(fwd_header->getTerminator(), fwd_indvar,
                                   fwd_writes, BIN_PUSH);

    auto load =
        new llvm::LoadInst(Type::getInt64Ty(fwd_indvar->getContext()),
                           rev_indvar, "rev_indvar", rev_bb->getFirstNonPHI());
    CreateConditionalStreamCommand(rev_bb->getFirstNonPHI(), load, rev_reads,
                                   BIN_POP);
  }
  return true;
}

static RegisterPass<LayerGenerator> X("layergen", "Layer Generator Pass");

} // namespace diffman