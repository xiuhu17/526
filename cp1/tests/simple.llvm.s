	.text
	.file	"simple.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	4611686018427387904     # double 2
.LCPI0_2:
	.quad	4666718224665018368     # double 9991
.LCPI0_3:
	.quad	4681607742408884224     # double 99991
.LCPI0_4:
	.quad	4666718774420832256     # double 9992
.LCPI0_5:
	.quad	4681607811128360960     # double 99992
.LCPI0_6:
	.quad	4619567317775286272     # double 7
.LCPI0_7:
	.quad	4680844337741824000     # double 88882
.LCPI0_8:
	.quad	4679317322249273344     # double 66661
.LCPI0_9:
	.quad	4693019367435141120     # double 555552
.LCPI0_10:
	.quad	4676340875553406976     # double 44442
.LCPI0_11:
	.quad	4659545560561221632     # double 3332
.LCPI0_12:
	.quad	4671837550803943424     # double 22222
.LCPI0_13:
	.quad	4667334500932386816     # double 11112
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
	subq	$624, %rsp              # imm = 0x270
	movsd	.LCPI0_0(%rip), %xmm10  # xmm10 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm8   # xmm8 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm9   # xmm9 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm11  # xmm11 = mem[0],zero
	movsd	.LCPI0_6(%rip), %xmm12  # xmm12 = mem[0],zero
	movsd	.LCPI0_7(%rip), %xmm13  # xmm13 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_9(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_10(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_11(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI0_12(%rip), %xmm6  # xmm6 = mem[0],zero
	movsd	.LCPI0_13(%rip), %xmm7  # xmm7 = mem[0],zero
	movl	$0, -4(%rbp)
	movl	$111111, -128(%rbp)     # imm = 0x1B207
	movsd	%xmm7, -120(%rbp)
	movl	$1113, -112(%rbp)       # imm = 0x459
	movl	$222221, -104(%rbp)     # imm = 0x3640D
	movsd	%xmm6, -96(%rbp)
	movl	$22223, -88(%rbp)       # imm = 0x56CF
	movl	$33331, -80(%rbp)       # imm = 0x8233
	movsd	%xmm5, -72(%rbp)
	movl	$33333, -64(%rbp)       # imm = 0x8235
	leaq	-80(%rbp), %rax
	movq	%rax, -512(%rbp)
	movl	$1, -288(%rbp)
	movl	$444441, -280(%rbp)     # imm = 0x6C819
	movl	$4441, -272(%rbp)       # imm = 0x1159
	movsd	%xmm0, -264(%rbp)
	movl	$44443, -256(%rbp)      # imm = 0xAD9B
	movl	$555551, -248(%rbp)     # imm = 0x87A1F
	movsd	%xmm3, -240(%rbp)
	movl	$55553, -232(%rbp)      # imm = 0xD901
	movsd	%xmm2, -224(%rbp)
	movl	$66661, -216(%rbp)      # imm = 0x10465
	movl	$6661, -216(%rbp)       # imm = 0x1A05
	movl	$6661, -216(%rbp)       # imm = 0x1A05
	movsd	%xmm2, -208(%rbp)
	movl	$77774, -200(%rbp)      # imm = 0x12FCE
	movl	$77779, -192(%rbp)      # imm = 0x12FD3
	leaq	-128(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$888881, -176(%rbp)     # imm = 0xD9031
	movsd	%xmm13, -168(%rbp)
	movl	$88883, -160(%rbp)      # imm = 0x15B33
	movsd	%xmm12, -152(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$999991, -56(%rbp)      # imm = 0xF4237
	movsd	%xmm11, -48(%rbp)
	movl	$99993, -40(%rbp)       # imm = 0x18699
	movl	$9991, -496(%rbp)       # imm = 0x2707
	movl	$99991, -488(%rbp)      # imm = 0x18697
	movsd	%xmm4, -480(%rbp)
	movl	$99993, -472(%rbp)      # imm = 0x18699
	movl	$9991, -464(%rbp)       # imm = 0x2707
	movsd	%xmm4, -456(%rbp)
	movl	$9993, -448(%rbp)       # imm = 0x2709
	movsd	%xmm9, -440(%rbp)
	movl	$9991, -432(%rbp)       # imm = 0x2707
	movl	$99991, -432(%rbp)      # imm = 0x18697
	movl	$9991, -432(%rbp)       # imm = 0x2707
	movsd	%xmm8, -424(%rbp)
	movl	$9994, -416(%rbp)       # imm = 0x270A
	movl	$9999, -408(%rbp)       # imm = 0x270F
	leaq	-56(%rbp), %rax
	movq	%rax, -400(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	$1000000, -32(%rbp)     # imm = 0xF4240
	movsd	%xmm1, -24(%rbp)
	movl	$300000000, -16(%rbp)   # imm = 0x11E1A300
	movl	$1000, -392(%rbp)       # imm = 0x3E8
	movl	$100000, -384(%rbp)     # imm = 0x186A0
	movsd	%xmm1, -376(%rbp)
	movl	$300000, -368(%rbp)     # imm = 0x493E0
	movl	$100, -360(%rbp)
	movsd	%xmm1, -352(%rbp)
	movl	$3000000, -344(%rbp)    # imm = 0x2DC6C0
	movsd	%xmm10, -336(%rbp)
	movl	$10000000, -328(%rbp)   # imm = 0x989680
	movl	$10000000, -328(%rbp)   # imm = 0x989680
	movl	$100000000, -328(%rbp)  # imm = 0x5F5E100
	movsd	%xmm10, -320(%rbp)
	movl	$400, -312(%rbp)        # imm = 0x190
	movl	$90000, -304(%rbp)      # imm = 0x15F90
	leaq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)
	leaq	-392(%rbp), %rax
	movq	%rax, -504(%rbp)
	movl	-248(%rbp), %esi
	movl	-200(%rbp), %edx
	movl	-160(%rbp), %ecx
	movq	-144(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movabsq	$.L.str, %rdi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$624, %rsp              # imm = 0x270
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
