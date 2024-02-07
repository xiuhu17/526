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
using namespace llvm;

STATISTIC(NumReplaced,  "Number of aggregate allocas broken up");
STATISTIC(NumPromoted,  "Number of scalar allocas promoted to register");

namespace {
  struct SROA : public FunctionPass {
    static char ID; // Pass identification
    SROA() : FunctionPass(ID) { }

    // Entry point for the overall scalar-replacement pass
    bool runOnFunction(Function &F);

    // getAnalysisUsage - List passes required by this pass.  We also know it
    // will not alter the CFG, so say so.
    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.setPreservesCFG();

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

// check whether it is promotable
bool Promotable(llvm::Value *Value_Def) {
  if (!Value_Def) {
    return false;
  }

  if (!(Value_Def->getType()->isFPOrFPVectorTy() || Value_Def->getType()->isIntOrIntVectorTy() || Value_Def->getType()->isPtrOrPtrVectorTy())) {
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

bool SROA::runOnFunction(Function &F) {
  worklist_alloca.clear();
  marked_worklist_alloca.clear();
  executed_alloca.clear();
  for (auto &BB : F) {
    for (auto &Inst : BB) {
      if (llvm::isa<llvm::AllocaInst>(Inst)) {
        worklist_alloca.insert(llvm::cast<llvm::AllocaInst>(&Inst));
        marked_worklist_alloca.insert(llvm::cast<llvm::AllocaInst>(&Inst));
      }
    }
  }

  for (auto &BB : F) {
    for (auto &Inst : BB) {
      if (llvm::isa<llvm::AllocaInst>(Inst)) {
        auto Alloca_Inst = llvm::cast<llvm::AllocaInst>(&Inst);
        assert(!(Promotable(Alloca_Inst) && !(isAllocaPromotable(Alloca_Inst))));
      }
    }
  }


  return true;
}