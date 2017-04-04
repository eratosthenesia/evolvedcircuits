.data
_answer:
  .asciz "Current byte: %d\n"
.text
.globl _main
_main:
  subq $8, %rsp
  subq $16, %rsp
  leaq (%rsp), %rdi # ARG[0] := &ARRAY
  movq $42, %rsi    # ARG[1] := 42
  movq $16, %rdx    # ARG[2] := 16 BYTES
  call _memset

  leaq _answer(%rip), %rdi
  movq $0, %rsi     # ("Current ...", 0)
  movb (%rsp), %sil
  movb $0, %al

  incq (%rsp)

  leaq _answer(%rip), %rdi
  movq $0, %rsi
  movb (%rsp), %sil
  movb $0, %al
  call _printf

  leaq _answer(%rip), %rdi
  movq $0, %rsi
  movb (%rsp), %sil
  movb $0, %al
  call _printf

  leaq _answer(%rip), %rdi
  movq $0, %rsi
  movb 1(%rsp), %sil
  movb $0, %al
  call _printf

  addq $16, %rsp
  movq $0, %rdi
  call _exit
