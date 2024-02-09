LEVEL = ..

## change or use make TARGET=inputfilename
TARGET=trivial

## replace LLVMROOT and SROALIB as appropriate
NETID = `whoami`
LLVMROOT ?= $(HOME)/llvm
SROALIB  = /home/zhihaow6/Desktop/cp1/build/pass/libSROA.so

LLVMGCC = /home/zhihaow6/llvm-project8/bin/clang
LLVMAS  = /home/zhihaow6/llvm-project8/bin/llvm-as
LLVMDIS = /home/zhihaow6/llvm-project8/bin/llvm-dis
LLVMOPT = /home/zhihaow6/llvm-project8/bin/opt


## Other choices: test or comparecfe (these will be provided later)
default: debug
DEBUGOPTS =  -verify -inline -mem2reg -simplifycfg -mem2reg -globalopt -globaldce -instcombine -adce -instcombine -simplifycfg

testsimple: debug
debug: $(TARGET).debug.bc
disassembly: $(TARGET).llvm.ll $(TARGET).debug.ll

## test (implement yourself) can be used to test out your solution with a known comparison target.
## I will use different pass pipelines during the actual testing.
## Please test your solution with different pass pipelines when using the test target.
test: $(TARGET).test.bc


.PRECIOUS: %.ll


%.ll: %.llvm.bc
	$(LLVMDIS) -f $<


%.llvm.bc: %.c
	$(LLVMGCC) -S -emit-llvm -o - $< | $(LLVMAS) -o=$@

%.debug.bc: %.llvm.bc
	$(LLVMOPT) $(DEBUGOPTS) < $< | \
	$(LLVMOPT) -load $(SROALIB) -scalarrepl-zhihaow6 -o=$@

clean:
	$(RM) -f *.debug.bc *.test.bc *.llvm.bc *.ll *.s
