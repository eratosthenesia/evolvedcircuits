	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
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
	pushq	%r14
	pushq	%rbx
Ltmp3:
	.cfi_offset %rbx, -32
Ltmp4:
	.cfi_offset %r14, -24
	movl	$492, %edi              ## imm = 0x1EC
	callq	_malloc
	movq	%rax, %rbx
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	_printf
	movl	$2, %eax
	.align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	leal	-2(%rax), %ecx
	imull	%ecx, %ecx
	addl	$42, %ecx
	movl	%ecx, -8(%rbx,%rax,4)
	leal	-1(%rax), %ecx
	imull	%ecx, %ecx
	addl	$42, %ecx
	movl	%ecx, -4(%rbx,%rax,4)
	movl	%eax, %ecx
	imull	%ecx, %ecx
	addl	$42, %ecx
	movl	%ecx, (%rbx,%rax,4)
	addq	$3, %rax
	cmpq	$125, %rax
	jne	LBB0_1
## BB#2:
	movl	12(%rbx), %edx
	leaq	L_.str.1(%rip), %r14
	movl	$3, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	40(%rbx), %edx
	movl	$10, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	68(%rbx), %edx
	movl	$17, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	96(%rbx), %edx
	movl	$24, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	124(%rbx), %edx
	movl	$31, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	152(%rbx), %edx
	movl	$38, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	180(%rbx), %edx
	movl	$45, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	208(%rbx), %edx
	movl	$52, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	236(%rbx), %edx
	movl	$59, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	264(%rbx), %edx
	movl	$66, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	292(%rbx), %edx
	movl	$73, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	320(%rbx), %edx
	movl	$80, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	348(%rbx), %edx
	movl	$87, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	376(%rbx), %edx
	movl	$94, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	404(%rbx), %edx
	movl	$101, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	432(%rbx), %edx
	movl	$108, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	460(%rbx), %edx
	movl	$115, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	488(%rbx), %edx
	movl	$122, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movq	%rbx, %rdi
	callq	_free
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%x\n"

L_.str.1:                               ## @.str.1
	.asciz	"x[%d] = %d\n"


.subsections_via_symbols
