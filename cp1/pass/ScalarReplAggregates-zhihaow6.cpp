//===- ScalarReplAggregates.cpp - Scalar Replacement of Aggregates --------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file was developed by the LLVM research group and is distributed under
// the University of Illinois Open Source License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This transformation implements the well known scalar replacement of
// aggregates transformation.  This xform breaks up alloca instructions of
// structure type into individual alloca instructions for
// each member (if possible).  Then, if possible, it transforms the individual
// alloca instructions into nice clean scalar SSA form.
//
// This combines an SRoA algorithm with Mem2Reg because they
// often interact, especially for C++ programs.  As such, this code
// iterates between SRoA and Mem2Reg until we run out of things to promote.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "scalarrepl"
#include <iostream>
#include "llvm/Transforms/Scalar.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Pass.h"
#include "llvm/Transforms/Utils/PromoteMemToReg.h"
#include "llvm/Support/Debug.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/DenseSet.h"
#include "llvm/IR/Dominators.h"
using namespace llvm;

STATISTIC(NumReplaced,  "Number of aggregate allocas broken up");
STATISTIC(NumPromoted,  "Number of scalar allocas promoted to register");

namespace {
  struct SROA : public FunctionPass {
    static char ID; // Pass identification
    SROA() : FunctionPass(ID) { }

    // Entry point for the overall scalar-replacement pass
    bool runOnFunction(Function &F);

    // insert the alloca function at the beginning of the funciton
    AllocaInst* insert_alloca_at_head(Function&F, Type *ty);


    // getAnalysisUsage - List passes required by this pass.  We also know it
    // will not alter the CFG, so say so.
    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.setPreservesCFG();
      AU.addRequired<DominatorTreeWrapperPass>();
    }

  private:
    // Add fields and helper functions for this pass here.
    // worklist: remove from worklist  
    // marked_worklist: add to worklist; only which not in the makred_worklist could be inside the worklist)
    // executed:                         only not in executed could executre
    // collect all the alloca instructions
    DenseSet<AllocaInst *> worklist_alloca;
    DenseSet<AllocaInst *> marked_worklist_alloca;
    DenseSet<AllocaInst *> executed_alloca;
  };
}

// Create the initializer and register the pass
char SROA::ID = 0;
// Public interface to create the ScalarReplAggregates pass.
// This function is provided to you.
static RegisterPass<SROA> X("scalarrepl-zhihaow6",
			    "Scalar Replacement of Aggregates (by zhihaow6)",
			    false /* does not modify the CFG */,
			    false /* transformation, not just analysis */);
FunctionPass *createMyScalarReplAggregatesPass() { return new SROA(); }

//===----------------------------------------------------------------------===//
//                      SKELETON FUNCTION TO BE IMPLEMENTED
//===----------------------------------------------------------------------===//
//
// Function runOnFunction:
// Entry point for the overall ScalarReplAggregates function pass.
// This function is provided to you.


AllocaInst* Insert_Alloca_At_Head(Function& f, Type *ty) {
  BasicBlock &entry_bb = f.getEntryBlock();
  if (entry_bb.empty()) {
    // Insert "at the end" of this bb
    return new AllocaInst(ty, 0, "", &entry_bb);
  } else {
    // Insert before the first instruction of this bb
    return new AllocaInst(ty, 0, "", &entry_bb.front());
  }
}

bool Promotable(AllocaInst* Value_Def) {
  if (!Value_Def) {
    return false;
  }

  if (!(Value_Def->getAllocatedType()->isFPOrFPVectorTy() || Value_Def->getAllocatedType()->isIntOrIntVectorTy() || Value_Def->getAllocatedType ()->isPtrOrPtrVectorTy())) {
    return false;
  }

  for (auto& Value_Use: Value_Def->uses()) {
    auto User = Value_Use.getUser();
    if (User && llvm::isa<llvm::Instruction>(User)) {
      auto User_Inst = llvm::cast<llvm::Instruction>(User);
      if (llvm::isa<llvm::LoadInst>(User_Inst)) {
        auto Load_Inst = llvm::cast<llvm::LoadInst>(User_Inst);
        if (Load_Inst->isVolatile()) {
          return false;
        } else {
          if (Load_Inst->getPointerOperand() != Value_Def) {  
            return false;
          }
        }
      } else if (llvm::isa<llvm::StoreInst>(User_Inst)) {
        auto Store_Inst = llvm::cast<llvm::StoreInst>(User_Inst);
        if (Store_Inst->isVolatile()) {
          return false;
        } else {
          if (Store_Inst->getPointerOperand() != Value_Def) {
            return false;
          }
        }
      } else {
        return false;
      }
    }
  }

  return true;
}

// by default the Value_Def do no need to be Struct Type
bool Is_Expandable_Recur(llvm::Value* Value_Def) {
  if (!Value_Def) {
    return false;
  }

  for (auto& Value_Use: Value_Def->uses()) {
    auto User = Value_Use.getUser();
    if (User && llvm::isa<llvm::Instruction>(User)) {
      auto User_Inst = llvm::cast<llvm::Instruction>(User);
      if (llvm::isa<llvm::LoadInst>(User_Inst)) {
        auto Load_Inst = llvm::cast<llvm::LoadInst>(User_Inst);
        if (Load_Inst->isVolatile()) {
          return false;
        } else {
          if (Load_Inst->getPointerOperand() != Value_Def) {
            return false;
          }
        }
      } else if (llvm::isa<llvm::StoreInst>(User_Inst)) {
        auto Store_Inst = llvm::cast<llvm::StoreInst>(User_Inst);
        if (Store_Inst->isVolatile()) {
          return false;
        } else {
          if (Store_Inst->getPointerOperand() != Value_Def) {
            return false;
          }
        }
      } else if (llvm::isa<GetElementPtrInst>(User)) {
        auto Gep_Inst = llvm::cast<GetElementPtrInst>(User);
        auto First_Idx = Gep_Inst->getOperand(1);
        auto First_Idx_Con = dyn_cast<ConstantInt>(First_Idx);
        if (!(First_Idx_Con && First_Idx_Con->isZero())) {
          return false;
        } else {
          return Is_Expandable_Recur(Gep_Inst); // recursive
        }
      } else if (llvm::isa<CmpInst>(User)) {
        auto Cmp_Inst = llvm::cast<CmpInst>(User);
        auto lhs = Cmp_Inst->getOperand(0), rhs = Cmp_Inst->getOperand(1);
        if (!((llvm::isa<llvm::ConstantPointerNull>(lhs) || llvm::isa<llvm::ConstantPointerNull>(rhs)) && 
            (Cmp_Inst->getPredicate() == llvm::ICmpInst::ICMP_EQ || Cmp_Inst->getPredicate() == llvm::ICmpInst::ICMP_NE))) {
              return false;
        }
      } else if (llvm::isa<BitCastInst>(User)) {
        continue;        
      } else {
        return false;
      }
    }
  }

  return true;
}

inline bool Is_Expandable_Entry(AllocaInst* Value_Def) {
  return  Value_Def->getAllocatedType()->isStructTy() && Is_Expandable_Recur(Value_Def);
}

void transform(Function &F) {
    
}

bool SROA::runOnFunction(Function &F) {
  dbgs() << F.getName() << "                               \n";
  // initialization
  worklist_alloca.clear();
  marked_worklist_alloca.clear();
  executed_alloca.clear();
  DominatorTree& DT = getAnalysis<DominatorTreeWrapperPass>().getDomTree();

  for (auto &BB : F) {
    for (auto &Inst : BB) {
      if (llvm::isa<llvm::AllocaInst>(Inst)) {
        worklist_alloca.insert(llvm::cast<llvm::AllocaInst>(&Inst));
        marked_worklist_alloca.insert(llvm::cast<llvm::AllocaInst>(&Inst));
      }
    }
  }

  // test the promotable function
  int counter_self = 0, counter_ref = 0, counter_expandable = 0;
  for (auto &BB : F) {
    for (auto &Inst : BB) {
      if (llvm::isa<llvm::AllocaInst>(Inst)) {
        auto Alloca_Inst = llvm::cast<llvm::AllocaInst>(&Inst);
        if (Is_Expandable_Entry(Alloca_Inst)) dbgs() << *Alloca_Inst << "\n";
        
        // if (Promotable(Alloca_Inst)) {
        //   counter_self += 1;
        // }
        // if (isAllocaPromotable(Alloca_Inst)) {
        //   counter_ref += 1;
        // }
      }
    }
  }

  // dbgs() << "Self Find is: " << counter_self << "\n";
  // dbgs() << "Ref Find is: " << counter_ref << "\n";
  // dbgs() << F.getName() << " Expandable Find is: " << counter_expandable << "\n";
  dbgs() << F.getName() << "                               \n";

  return true;
}