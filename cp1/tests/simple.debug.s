	.text
	.file	"simple.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4635118810238550016     # double 77
.LCPI0_1:
	.quad	4626041242239631360     # double 19
.LCPI0_2:
	.quad	4611686018427387904     # double 2
.LCPI0_3:
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
	subq	$80, %rsp
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movl	$0, -28(%rbp)
	movl	$10, -4(%rbp)
	movsd	%xmm3, -56(%rbp)
	movl	$12, -32(%rbp)
	movl	$1, -12(%rbp)
	movsd	%xmm2, -72(%rbp)
	movl	$3, -48(%rbp)
	movl	$10, -40(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	$199, -44(%rbp)
	movl	$7, -36(%rbp)
	movsd	%xmm0, -64(%rbp)
	movl	$17, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movabsq	$.L.str, %rdi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"The value is: %d %d %d %f"
	.size	.L.str, 26


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
