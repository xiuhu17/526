	.text
	.file	"trivial.c"
	.globl	test_func               # -- Begin function test_func
	.p2align	4, 0x90
	.type	test_func,@function
test_func:                              # @test_func
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-24(%rbp), %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-8(%rbp), %edx
	movabsq	$.L.str, %rdi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	test_func, .Lfunc_end0-test_func
	.cfi_endproc
                                        # -- End function
	.globl	test_func_ptr           # -- Begin function test_func_ptr
	.p2align	4, 0x90
	.type	test_func_ptr,@function
test_func_ptr:                          # @test_func_ptr
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-24(%rbp), %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-8(%rbp), %edx
	movabsq	$.L.str, %rdi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	test_func_ptr, .Lfunc_end1-test_func_ptr
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI2_0:
	.quad	4594314986146273560     # double 0.14285700000000001
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$0, -32(%rbp)
	movl	%edi, -28(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$10, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$12, -8(%rbp)
	movl	-24(%rbp), %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-8(%rbp), %edx
	movabsq	$.L.str, %rdi
	movb	$1, %al
	callq	printf
	leaq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	test_func
	leaq	-24(%rbp), %rdi
	callq	test_func_ptr
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"testSimple: %d %f % d\n"
	.size	.L.str, 23


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
