	.data
_mainstring:
	.asciz "%x\n"
	.text
	.globl _main
_main:
	subq $8, %rsp
	movq $123, %rdi
	callq _malloc
	movq %rax, %rbx
	leaq _mainstring(%rip), %rdi
	xorl %eax, %eax
	movq %rbx, %rsi
	callq _printf
	movq %rbx, %rdi
	callq _free
	xorq %rdi, %rdi
	call _exit
