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
FunctionPass *createMyScalarReplAggregatesPass() { return new SROA(); }
static RegisterPass<SROA> X("scalarrepl-zhihaow6",
			    "Scalar Replacement of Aggregates (by zhihaow6)",
			    false /* does not modify the CFG */,
			    false /* transformation, not just analysis */);

//===----------------------------------------------------------------------===//
//                      SKELETON FUNCTION TO BE IMPLEMENTED
//===----------------------------------------------------------------------===//
//
// Function runOnFunction:
// Entry point for the overall ScalarReplAggregates function pass.
// This function is provided to you.
bool SROA::runOnFunction(Function &F) {
  // worklist: remove from worklist  
  worklist_alloca.clear();
  marked_worklist_alloca.clear();
  executed_alloca.clear();
  for (auto &BB : F) {
    for (auto &Inst : BB) {
      if (llvm::isa<llvm::AllocaInst>(Inst)) {
        worklist_alloca.insert(Inst);
        makred_worklist.insert(Inst);
      }
    }
  }
  return true;
}

