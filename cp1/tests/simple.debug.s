	.text
	.file	"simple.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4671837550803943424     # double 22222
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
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movabsq	$.L.str, %rdi
	movl	$555551, %esi           # imm = 0x87A1F
	movl	$77774, %edx            # imm = 0x12FCE
	movl	$88883, %ecx            # imm = 0x15B33
	movl	$300000000, %r8d        # imm = 0x11E1A300
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
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
	.asciz	"The value is: %d %d %d %f %d"
	.size	.L.str, 29


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
