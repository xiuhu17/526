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
	movl	$0, -12(%rbp)
	movl	$111111, -136(%rbp)     # imm = 0x1B207
	movsd	%xmm7, -128(%rbp)
	movl	$1113, -120(%rbp)       # imm = 0x459
	movl	$222221, -112(%rbp)     # imm = 0x3640D
	movsd	%xmm6, -104(%rbp)
	movl	$22223, -96(%rbp)       # imm = 0x56CF
	movl	$33331, -88(%rbp)       # imm = 0x8233
	movsd	%xmm5, -80(%rbp)
	movl	$33333, -72(%rbp)       # imm = 0x8235
	leaq	-88(%rbp), %rax
	movq	%rax, -520(%rbp)
	movl	$1, -304(%rbp)
	movl	$444441, -296(%rbp)     # imm = 0x6C819
	movl	$4441, -288(%rbp)       # imm = 0x1159
	movsd	%xmm0, -280(%rbp)
	movl	$44443, -272(%rbp)      # imm = 0xAD9B
	movl	$555551, -264(%rbp)     # imm = 0x87A1F
	movsd	%xmm3, -256(%rbp)
	movl	$55553, -248(%rbp)      # imm = 0xD901
	movsd	%xmm2, -240(%rbp)
	movl	$66661, -232(%rbp)      # imm = 0x10465
	movl	$6661, -232(%rbp)       # imm = 0x1A05
	movl	$6661, -232(%rbp)       # imm = 0x1A05
	movsd	%xmm2, -224(%rbp)
	movl	$77774, -216(%rbp)      # imm = 0x12FCE
	movl	$77779, -208(%rbp)      # imm = 0x12FD3
	leaq	-136(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$888881, -192(%rbp)     # imm = 0xD9031
	movsd	%xmm13, -184(%rbp)
	movl	$88883, -176(%rbp)      # imm = 0x15B33
	movsd	%xmm12, -168(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$999991, -64(%rbp)      # imm = 0xF4237
	movsd	%xmm11, -56(%rbp)
	movl	$99993, -48(%rbp)       # imm = 0x18699
	movl	$9991, -512(%rbp)       # imm = 0x2707
	movl	$99991, -504(%rbp)      # imm = 0x18697
	movsd	%xmm4, -496(%rbp)
	movl	$99993, -488(%rbp)      # imm = 0x18699
	movl	$9991, -480(%rbp)       # imm = 0x2707
	movsd	%xmm4, -472(%rbp)
	movl	$9993, -464(%rbp)       # imm = 0x2709
	movsd	%xmm9, -456(%rbp)
	movl	$9991, -448(%rbp)       # imm = 0x2707
	movl	$99991, -448(%rbp)      # imm = 0x18697
	movl	$9991, -448(%rbp)       # imm = 0x2707
	movsd	%xmm8, -440(%rbp)
	movl	$9994, -432(%rbp)       # imm = 0x270A
	movl	$9999, -424(%rbp)       # imm = 0x270F
	leaq	-64(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$1000000, -40(%rbp)     # imm = 0xF4240
	movsd	%xmm1, -32(%rbp)
	movl	$300000000, -24(%rbp)   # imm = 0x11E1A300
	movl	$1000, -408(%rbp)       # imm = 0x3E8
	movl	$100000, -400(%rbp)     # imm = 0x186A0
	movsd	%xmm1, -392(%rbp)
	movl	$300000, -384(%rbp)     # imm = 0x493E0
	movl	$100, -376(%rbp)
	movsd	%xmm1, -368(%rbp)
	movl	$3000000, -360(%rbp)    # imm = 0x2DC6C0
	movsd	%xmm10, -352(%rbp)
	movl	$10000000, -344(%rbp)   # imm = 0x989680
	movl	$10000000, -344(%rbp)   # imm = 0x989680
	movl	$100000000, -344(%rbp)  # imm = 0x5F5E100
	movsd	%xmm10, -336(%rbp)
	movl	$400, -328(%rbp)        # imm = 0x190
	movl	$90000, -320(%rbp)      # imm = 0x15F90
	leaq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-408(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-264(%rbp), %esi
	movl	-216(%rbp), %edx
	movl	-176(%rbp), %ecx
	movq	-160(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	96(%rax), %rax
	movl	16(%rax), %r8d
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
	.asciz	"The value is: %d %d %d %f %d"
	.size	.L.str, 29


	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
