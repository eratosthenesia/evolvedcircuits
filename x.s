	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_f
	.align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	-8(%rbp), %xmm0         ## xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        ## xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	divsd	-8(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        ## xmm1 = mem[0],zero
	subsd	-8(%rbp), %xmm1
	movsd	-24(%rbp), %xmm2        ## xmm2 = mem[0],zero
	subsd	-16(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI1_0:
	.quad	4612361558371493478     ## double 2.2999999999999998
LCPI1_1:
	.quad	4617653287933653811     ## double 5.2999999999999998
LCPI1_2:
	.quad	4620468037700760371     ## double 7.7999999999999998
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	LCPI1_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI1_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	movsd	LCPI1_2(%rip), %xmm2    ## xmm2 = mem[0],zero
	movl	$0, -4(%rbp)
	callq	_f
	xorl	%eax, %eax
	movsd	%xmm0, -16(%rbp)        ## 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
