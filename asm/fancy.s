	.data
_one:
	.asciz "%x\n"
_two:
	.asciz "x[%d] = %d\n"
	.text
	.globl _main
_main:
	subq $8, %rsp
	movl $492, %edi		# 492 = 4 * 123 32b integers
	callq _malloc
	movq %rax, %rbx
	leaq _one(%rip), %rdi
	xorl %eax, %eax
	movq %rbx, %rsi
	callq _printf
	movl $2, %eax
arithloop:	
	leal -2(%rax), %ecx
	imull %ecx, %ecx
	addl $42, %ecx
	movl %ecx, -8(%rbx,%rax,4)
	leal -1(%rax), %ecx
	imull %ecx, %ecx
	addl $42, %ecx
	movl %ecx, -4(%rbx,%rax,4)
	movl %eax, %ecx
	imull %ecx, %ecx
	addl $42, %ecx
	movl %ecx, (%rbx,%rax,4)
	addq $3, %rax
	cmpq $125, %rax
	jne arithloop
printloop:
	movl 12(%rbx), %edx
	leaq _two(%rip), %r14
	movl $3, %esi
	xorl %eax, %eax
	movq %r14, %rdi
	callq _printf
	movl 40(%rbx), %edx
	movl $10, %esi
	xorl %eax, %eax
	movq %r14, %rdi
	callq _printf
	movl 68(%rbx), %edx
	movl $17, %esi
	xorl %eax, %eax
	movq %r14, %rdi
	callq _printf
	xorq %rdi, %rdi
	callq _exit