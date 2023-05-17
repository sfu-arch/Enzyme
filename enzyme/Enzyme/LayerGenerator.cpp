#include "LayerGenerator.h"

#include "CacheUtility.h"

#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <set>

extern "C" {
extern llvm::cl::opt<int> BIN_SIZE;
llvm::cl::opt<bool> Reorder("tapeman-reorder", cl::init(false),
                                    cl::Hidden,
                                    cl::desc("Reorder the tape operations."));
}

using namespace llvm;

namespace tapeman {
namespace {
// Creates Conditional push/pop operations at the given instruction.
void CreateConditionalStreamCommand(Instruction *start_inst,
                                    Instruction *ind_var, int tape_ops,
                                    std::string command) {
  int interval = BIN_SIZE / tape_ops;
  auto Int64Ty = Type::getInt64Ty(ind_var->getContext());
  auto mod_inst = BinaryOperator::Create(
      BinaryOperator::URem, ind_var,
      ConstantInt::get(Int64Ty, interval), "mod", start_inst);

  auto icmp_inst = CmpInst::Create(
      Instruction::ICmp, CmpInst::ICMP_EQ, mod_inst,
      ConstantInt::get(Int64Ty, interval - 1), "cmp");
  icmp_inst->insertAfter(mod_inst);

  auto new_inst = SplitBlockAndInsertIfThen(icmp_inst, start_inst, false);

  // setLayerBoundary(new_inst, tape_ops * interval, command);
}

// Reorders the tape operations in the loop to store them to the consecutive elements in the memory.
void ReorderTapeOps(SmallVector<Loop*, 4> loops, GradientUtils *gutils) {
  // A map from loop header to the tape write instruction.
  // std::unordered_map<BasicBlock *, std::vector<Instruction*>> header_to_inst_map;
  // std::unordered_map<Instruction *, BasicBlock *> inst_to_header_map;

  // for (auto [key, value] : gutils->forward_to_reverse_map) {
  //   BasicBlock *fwd_bb = cast<Instruction>(key)->getParent();
  //   bool found = false;
  //   for (auto it = loops.rbegin(); it != loops.rend(), !found; ++it) {
  //     for (auto bb: (*it)->blocks()) {
  //       if (bb == fwd_bb) {
  //         if (header_to_inst_map.find(bb) == header_to_inst_map.end())
  //           header_to_inst_map[bb] = std::vector<Instruction*>();
  //         header_to_inst_map[bb].push_back(cast<Instruction>(key));
  //         inst_to_header_map[key] = bb;
  //         found = true;
  //         break;
  //       }
  //     }
  //   }
  // }

  // for (auto [bb, inst_vector]: header_to_inst_map) {
  //   LLVMContext &context = bb->getContext();
  //   auto size = ConstantInt::get(Type::getInt64Ty(context), inst_vector.size());
  //   auto malloc = CallInst::CreateMalloc(
  //           bb->getFirstNonPHI(), Type::getInt64Ty(context),
  //           Type::getDoubleTy(context), size, nullptr, nullptr, "tapeman_malloc");
  //   for (int i = 0; i < inst_vector.size(); i++) {
  //     auto gep = GetElementPtrInst::CreateInBounds(
  //             Type::getDoubleTy(context), malloc,
  //             {ConstantInt::get(Type::getInt64Ty(context), i)},
  //             "tapeman_gep", inst_vector[i]);
  //     errs() << *gep << "\n";
  //     if (auto store_inst = dyn_cast<StoreInst>(inst_vector[i])) {
  //       auto bitcast = new BitCastInst(store_inst->getValueOperand(), Type::getDoubleTy(context), "tapeman_bitcast", store_inst);
  //       StoreInst* reordered_store = new StoreInst(bitcast, gep, false, store_inst);
  //       reordered_store->setMetadata("tapeman_reorder", MDNode::get(context, {}));
  //     } else {
  //       // TODO(@Milad): Handle Load instructions.
  //     }
  //   }
  //   // TODO(@Milad): handle the loads in the reverse.
  // }
  // for (auto [header, size]: gutils->loopMallocSizes) {
  //   llvm::errs() << "Header: " << header->getName() << "size = " << size << "\n";
  // }
}

} // namespace

char LayerGenerator::ID = 0;

// Todo(@Milad): Fix the bounderis for the push/pop operations.
bool LayerGenerator::runOnFunction(Function &f) {
  errs() << "Layer Gen Pass\n";
  DominatorTree DT = DominatorTree();
  DT.recalculate(f);
  auto loop_info = new LoopInfoBase<BasicBlock, Loop>();
  loop_info->releaseMemory();
  loop_info->analyze(DT);

  auto loops = loop_info->getLoopsInPreorder();
  if (Reorder) {
    ReorderTapeOps(loops, gutils_);
  }
  // Traverse the loop tree in preorder and instrument the basic blocks for
  // pushes and pops
  for (auto it = loops.rbegin(); it != loops.rend(); ++it) {
    BasicBlock *header = (*it)->getHeader();
    LoopContext lc;
    if (!gutils_->getContext(header, lc))
      continue;
    BasicBlock *fwd_header = header;

    if (gutils_->forward_bb_writes_.find(fwd_header) ==
        gutils_->forward_bb_writes_.end())
      continue;
    int fwd_writes = gutils_->forward_bb_writes_[fwd_header];
    if (fwd_writes > BIN_SIZE) // No need to instrument in this case.
      continue;

    PHINode *fwd_indvar = lc.var;
    assert(fwd_indvar);

    AllocaInst *rev_indvar = lc.antivaralloc;
    assert(rev_indvar);

    BasicBlock *rev_bb = gutils_->reverseBlocks[fwd_header].back();
    assert(rev_bb);
    int rev_reads = gutils_->reverse_bb_reads_[rev_bb];
    CreateConditionalStreamCommand(fwd_header->getTerminator(), fwd_indvar,
                                   fwd_writes, BIN_PUSH);
    // Load the reverse's indvar.
    auto load =
        new LoadInst(Type::getInt64Ty(fwd_indvar->getContext()),
                           rev_indvar, "rev_indvar", rev_bb->getFirstNonPHI());
    CreateConditionalStreamCommand(rev_bb->getFirstNonPHI(), load, rev_reads,
                                   BIN_POP);

    // Todo(@Milad): Handle Reads/writes.
  }
  return true;
}

static RegisterPass<LayerGenerator> X("layergen", "Layer Generator Pass");

} // namespace tapeman