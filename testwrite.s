	.text
printd:	.asciz "%d\n"
fname: 	.asciz "testfile.txt"
fileout:.asciz "This will be output to testfile.txt\n"	
fileerr:	.asciz "There was an error writing to testfile.txt\n"
	.global _main
_main:
	subq $8, %rsp
	leaq fname(%rip), %rdi
	movq $9, %rsi
	movq $432, %rdx
	call _open
	cmpl $0, %eax
	jl main2
	movq %rax, %rdi
	leaq fileout(%rip), %rsi
	movq $36, %rdx
	callq _write
	cmpl $36, %eax
	je main1
main2:	
	movq $1, %rdi
	leaq fileerr(%rip), %rsi
	movq $43, %rdx
	callq _write
	movq $1, %rax
	addq $8, %rsp
	retq
main1:	
	addq $8, %rsp
	xorq %rax, %rax
	retq
