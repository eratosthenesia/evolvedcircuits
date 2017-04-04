	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.file	1 "ll.c"
	.file	2 "/usr/include/i386" "_types.h"
	.file	3 "/usr/include/sys/_types" "_size_t.h"
	.globl	_ll_init
	.align	4, 0x90
_ll_init:                               ## @ll_init
Lfunc_begin0:
	.loc	1 34 0                  ## ll.c:34:0
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
	subq	$32, %rsp
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	1 36 9 prologue_end     ## ll.c:36:9
Ltmp3:
	movq	%rcx, %rdi
	callq	_malloc
	.loc	1 36 7 is_stmt 0        ## ll.c:36:7
	movq	%rax, -24(%rbp)
	.loc	1 37 15 is_stmt 1       ## ll.c:37:15
	movq	-8(%rbp), %rax
	.loc	1 37 3 is_stmt 0        ## ll.c:37:3
	movq	-24(%rbp), %rcx
	.loc	1 37 13                 ## ll.c:37:13
	movq	%rax, (%rcx)
	.loc	1 38 15 is_stmt 1       ## ll.c:38:15
	movq	-16(%rbp), %rax
	.loc	1 38 3 is_stmt 0        ## ll.c:38:3
	movq	-24(%rbp), %rcx
	.loc	1 38 13                 ## ll.c:38:13
	movq	%rax, 8(%rcx)
	.loc	1 39 10 is_stmt 1       ## ll.c:39:10
	movq	-24(%rbp), %rax
	.loc	1 39 3 is_stmt 0        ## ll.c:39:3
	addq	$32, %rsp
	popq	%rbp
	retq
Ltmp4:
Lfunc_end0:
	.cfi_endproc

	.globl	_ll_delete
	.align	4, 0x90
_ll_delete:                             ## @ll_delete
Lfunc_begin1:
	.loc	1 41 0 is_stmt 1        ## ll.c:41:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp5:
	.cfi_def_cfa_offset 16
Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp7:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	1 42 6 prologue_end     ## ll.c:42:6
Ltmp8:
	cmpq	$0, -16(%rbp)
Ltmp9:
	.loc	1 42 6 is_stmt 0        ## ll.c:42:6
	je	LBB1_2
## BB#1:
	.loc	1 43 7 is_stmt 1        ## ll.c:43:7
Ltmp10:
	movq	-16(%rbp), %rax
	.loc	1 43 19 is_stmt 0       ## ll.c:43:19
	movq	-8(%rbp), %rcx
	.loc	1 43 25                 ## ll.c:43:25
	movq	8(%rcx), %rdi
	.loc	1 43 5                  ## ll.c:43:5
	callq	*%rax
Ltmp11:
LBB1_2:
	.loc	1 45 8 is_stmt 1        ## ll.c:45:8
	movq	-8(%rbp), %rax
	.loc	1 45 3 is_stmt 0        ## ll.c:45:3
	movq	%rax, %rdi
	callq	_free
	.loc	1 46 1 is_stmt 1        ## ll.c:46:1
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp12:
Lfunc_end1:
	.cfi_endproc

	.globl	_stack_init
	.align	4, 0x90
_stack_init:                            ## @stack_init
Lfunc_begin2:
	.loc	1 47 0                  ## ll.c:47:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	.loc	1 49 9 prologue_end     ## ll.c:49:9
Ltmp16:
	movq	%rcx, %rdi
	callq	_malloc
	xorl	%edx, %edx
	movl	%edx, %ecx
	.loc	1 49 7 is_stmt 0        ## ll.c:49:7
	movq	%rax, -16(%rbp)
	.loc	1 50 15 is_stmt 1       ## ll.c:50:15
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	_ll_init
	.loc	1 50 3 is_stmt 0        ## ll.c:50:3
	movq	-16(%rbp), %rcx
	.loc	1 50 13                 ## ll.c:50:13
	movq	%rax, (%rcx)
	.loc	1 51 3 is_stmt 1        ## ll.c:51:3
	movq	-16(%rbp), %rax
	.loc	1 51 15 is_stmt 0       ## ll.c:51:15
	movl	$0, 8(%rax)
	.loc	1 52 21 is_stmt 1       ## ll.c:52:21
	movq	-8(%rbp), %rax
	.loc	1 52 3 is_stmt 0        ## ll.c:52:3
	movq	-16(%rbp), %rcx
	.loc	1 52 19                 ## ll.c:52:19
	movq	%rax, 16(%rcx)
	.loc	1 53 10 is_stmt 1       ## ll.c:53:10
	movq	-16(%rbp), %rax
	.loc	1 53 3 is_stmt 0        ## ll.c:53:3
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp17:
Lfunc_end2:
	.cfi_endproc

	.globl	_stack_delete
	.align	4, 0x90
_stack_delete:                          ## @stack_delete
Lfunc_begin3:
	.loc	1 55 0 is_stmt 1        ## ll.c:55:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	.loc	1 56 13 prologue_end    ## ll.c:56:13
Ltmp21:
	movq	-8(%rbp), %rdi
	.loc	1 56 19 is_stmt 0       ## ll.c:56:19
	movq	(%rdi), %rdi
	.loc	1 56 7                  ## ll.c:56:7
	movq	%rdi, -16(%rbp)
	.loc	1 57 30 is_stmt 1       ## ll.c:57:30
	movq	-8(%rbp), %rdi
	.loc	1 57 36 is_stmt 0       ## ll.c:57:36
	movq	16(%rdi), %rdi
	.loc	1 57 9                  ## ll.c:57:9
	movq	%rdi, -24(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	.loc	1 58 3 is_stmt 1        ## ll.c:58:3
	cmpq	$0, -16(%rbp)
	je	LBB3_3
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
	.loc	1 59 15                 ## ll.c:59:15
Ltmp22:
	movq	-16(%rbp), %rdi
	.loc	1 59 20 is_stmt 0       ## ll.c:59:20
	movq	-24(%rbp), %rsi
	.loc	1 59 5                  ## ll.c:59:5
	callq	_ll_delete
	.loc	1 60 11 is_stmt 1       ## ll.c:60:11
	movq	-16(%rbp), %rsi
	.loc	1 60 16 is_stmt 0       ## ll.c:60:16
	movq	(%rsi), %rsi
	.loc	1 60 9                  ## ll.c:60:9
	movq	%rsi, -16(%rbp)
Ltmp23:
	.loc	1 58 3 is_stmt 1        ## ll.c:58:3
	jmp	LBB3_1
LBB3_3:
	.loc	1 62 8                  ## ll.c:62:8
	movq	-8(%rbp), %rax
	.loc	1 62 3 is_stmt 0        ## ll.c:62:3
	movq	%rax, %rdi
	callq	_free
	.loc	1 63 1 is_stmt 1        ## ll.c:63:1
	addq	$32, %rsp
	popq	%rbp
	retq
Ltmp24:
Lfunc_end3:
	.cfi_endproc

	.globl	_stack_push
	.align	4, 0x90
_stack_push:                            ## @stack_push
Lfunc_begin4:
	.loc	1 64 0                  ## ll.c:64:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp25:
	.cfi_def_cfa_offset 16
Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	1 65 23 prologue_end    ## ll.c:65:23
Ltmp28:
	movq	-8(%rbp), %rsi
	.loc	1 65 29 is_stmt 0       ## ll.c:65:29
	movq	(%rsi), %rdi
	.loc	1 65 35                 ## ll.c:65:35
	movq	-16(%rbp), %rsi
	.loc	1 65 15                 ## ll.c:65:15
	callq	_ll_init
	.loc	1 65 7                  ## ll.c:65:7
	movq	%rax, -24(%rbp)
	.loc	1 66 16 is_stmt 1       ## ll.c:66:16
	movq	-24(%rbp), %rax
	.loc	1 66 3 is_stmt 0        ## ll.c:66:3
	movq	-8(%rbp), %rsi
	.loc	1 66 14                 ## ll.c:66:14
	movq	%rax, (%rsi)
	.loc	1 67 4 is_stmt 1        ## ll.c:67:4
	movq	-8(%rbp), %rax
	.loc	1 67 17 is_stmt 0       ## ll.c:67:17
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	.loc	1 68 1 is_stmt 1        ## ll.c:68:1
	addq	$32, %rsp
	popq	%rbp
	retq
Ltmp29:
Lfunc_end4:
	.cfi_endproc

	.globl	_stack_pop
	.align	4, 0x90
_stack_pop:                             ## @stack_pop
Lfunc_begin5:
	.loc	1 69 0                  ## ll.c:69:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	.loc	1 73 6 prologue_end     ## ll.c:73:6
Ltmp33:
	movq	-24(%rbp), %rdi
	cmpl	$0, 8(%rdi)
Ltmp34:
	.loc	1 73 6 is_stmt 0        ## ll.c:73:6
	je	LBB5_2
## BB#1:
	.loc	1 74 18 is_stmt 1       ## ll.c:74:18
Ltmp35:
	movq	-24(%rbp), %rax
	.loc	1 74 24 is_stmt 0       ## ll.c:74:24
	movq	(%rax), %rax
	.loc	1 74 16                 ## ll.c:74:16
	movq	%rax, -32(%rbp)
	.loc	1 74 31                 ## ll.c:74:31
	movq	(%rax), %rax
	.loc	1 74 9                  ## ll.c:74:9
	movq	%rax, -40(%rbp)
	.loc	1 75 12 is_stmt 1       ## ll.c:75:12
	movq	-32(%rbp), %rax
	.loc	1 75 17 is_stmt 0       ## ll.c:75:17
	movq	8(%rax), %rax
	.loc	1 75 10                 ## ll.c:75:10
	movq	%rax, -48(%rbp)
	.loc	1 76 15 is_stmt 1       ## ll.c:76:15
	movq	-32(%rbp), %rdi
	.loc	1 76 19 is_stmt 0       ## ll.c:76:19
	movq	-24(%rbp), %rax
	.loc	1 76 25                 ## ll.c:76:25
	movq	16(%rax), %rsi
	.loc	1 76 5                  ## ll.c:76:5
	callq	_ll_delete
	.loc	1 77 18 is_stmt 1       ## ll.c:77:18
	movq	-40(%rbp), %rax
	.loc	1 77 5 is_stmt 0        ## ll.c:77:5
	movq	-24(%rbp), %rsi
	.loc	1 77 16                 ## ll.c:77:16
	movq	%rax, (%rsi)
	.loc	1 78 33 is_stmt 1       ## ll.c:78:33
	movq	-48(%rbp), %rax
	.loc	1 78 32 is_stmt 0       ## ll.c:78:32
	movq	%rax, -16(%rbp)
	.loc	1 78 39                 ## ll.c:78:39
	movb	_True(%rip), %cl
	.loc	1 78 32                 ## ll.c:78:32
	movb	%cl, -8(%rbp)
	.loc	1 78 5                  ## ll.c:78:5
	jmp	LBB5_3
Ltmp36:
LBB5_2:
	.loc	1 80 30 is_stmt 1       ## ll.c:80:30
	movq	$0, -16(%rbp)
	.loc	1 80 37 is_stmt 0       ## ll.c:80:37
	movb	_False(%rip), %al
	.loc	1 80 30                 ## ll.c:80:30
	movb	%al, -8(%rbp)
LBB5_3:
	.loc	1 81 1 is_stmt 1        ## ll.c:81:1
	movq	-16(%rbp), %rax
	movb	-8(%rbp), %dl
	addq	$48, %rsp
	popq	%rbp
	retq
Ltmp37:
Lfunc_end5:
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
Lfunc_begin6:
	.loc	1 83 0                  ## ll.c:83:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp38:
	.cfi_def_cfa_offset 16
Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$0, -4(%rbp)
	.loc	1 84 14 prologue_end    ## ll.c:84:14
Ltmp41:
	callq	_stack_init
	leaq	L_.str(%rip), %rdi
	.loc	1 84 10 is_stmt 0       ## ll.c:84:10
	movq	%rax, -16(%rbp)
	.loc	1 85 26 is_stmt 1       ## ll.c:85:26
	movq	-16(%rbp), %rsi
	.loc	1 85 3 is_stmt 0        ## ll.c:85:3
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	.loc	1 86 3 is_stmt 1        ## ll.c:86:3
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
Ltmp42:
Lfunc_end6:
	.cfi_endproc

	.section	__DATA,__data
	.globl	_True                   ## @True
_True:
	.byte	1                       ## 0x1

	.globl	_False                  ## @False
.zerofill __DATA,__common,_False,1,0
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%x\n"

	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple LLVM version 8.0.0 (clang-800.0.42.1)" ## string offset=0
	.asciz	"ll.c"                  ## string offset=44
	.asciz	"/Users/santiago/GabeProject/asm/tests" ## string offset=49
	.asciz	"True"                  ## string offset=87
	.asciz	"boolean"               ## string offset=92
	.asciz	"char"                  ## string offset=100
	.asciz	"False"                 ## string offset=105
	.asciz	"size_t"                ## string offset=111
	.asciz	"__darwin_size_t"       ## string offset=118
	.asciz	"long unsigned int"     ## string offset=134
	.asciz	"ll_init"               ## string offset=152
	.asciz	"ll_delete"             ## string offset=160
	.asciz	"stack_init"            ## string offset=170
	.asciz	"stack_delete"          ## string offset=181
	.asciz	"stack_push"            ## string offset=194
	.asciz	"stack_pop"             ## string offset=205
	.asciz	"main"                  ## string offset=215
	.asciz	"ll"                    ## string offset=220
	.asciz	"next"                  ## string offset=223
	.asciz	"data"                  ## string offset=228
	.asciz	"stack"                 ## string offset=233
	.asciz	"head"                  ## string offset=239
	.asciz	"length"                ## string offset=244
	.asciz	"int"                   ## string offset=251
	.asciz	"deleteData"            ## string offset=255
	.asciz	"stack_pop_t"           ## string offset=266
	.asciz	"success"               ## string offset=278
	.asciz	"ret"                   ## string offset=286
	.asciz	"self"                  ## string offset=290
	.asciz	"ptr"                   ## string offset=295
	.asciz	"newLL"                 ## string offset=299
	.asciz	"nxt"                   ## string offset=305
	.asciz	"s"                     ## string offset=309
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	6                       ## DW_FORM_data4
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	21                      ## DW_TAG_subroutine_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
	.long	775                     ## Length of Unit
	.short	2                       ## DWARF version number
Lset0 = Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset0
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x300 DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	44                      ## DW_AT_name
Lset1 = Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset1
	.long	49                      ## DW_AT_comp_dir
	.quad	Lfunc_begin0            ## DW_AT_low_pc
	.quad	Lfunc_end6              ## DW_AT_high_pc
	.byte	2                       ## Abbrev [2] 0x2e:0x16 DW_TAG_variable
	.long	87                      ## DW_AT_name
	.long	68                      ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_decl_file
	.byte	5                       ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_True
	.byte	3                       ## Abbrev [3] 0x44:0xb DW_TAG_typedef
	.long	79                      ## DW_AT_type
	.long	92                      ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	4                       ## DW_AT_decl_line
	.byte	4                       ## Abbrev [4] 0x4f:0x7 DW_TAG_base_type
	.long	100                     ## DW_AT_name
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	2                       ## Abbrev [2] 0x56:0x16 DW_TAG_variable
	.long	105                     ## DW_AT_name
	.long	68                      ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_False
	.byte	5                       ## Abbrev [5] 0x6c:0x1 DW_TAG_pointer_type
	.byte	3                       ## Abbrev [3] 0x6d:0xb DW_TAG_typedef
	.long	120                     ## DW_AT_type
	.long	111                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.byte	3                       ## Abbrev [3] 0x78:0xb DW_TAG_typedef
	.long	131                     ## DW_AT_type
	.long	118                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	92                      ## DW_AT_decl_line
	.byte	4                       ## Abbrev [4] 0x83:0x7 DW_TAG_base_type
	.long	134                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	6                       ## Abbrev [6] 0x8a:0x4a DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
	.quad	Lfunc_end0              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	152                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	601                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	7                       ## Abbrev [7] 0xa9:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	223                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	601                     ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0xb7:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	228                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	108                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0xc5:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.long	286                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.long	601                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0xd4:0x38 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
	.quad	Lfunc_end1              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	160                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	41                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.byte	1                       ## DW_AT_external
	.byte	7                       ## Abbrev [7] 0xef:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	290                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	41                      ## DW_AT_decl_line
	.long	601                     ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0xfd:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	255                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	41                      ## DW_AT_decl_line
	.long	728                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x10c:0x3c DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
	.quad	Lfunc_end2              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	170                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	47                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	654                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	7                       ## Abbrev [7] 0x12b:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	255                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	47                      ## DW_AT_decl_line
	.long	728                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x139:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	286                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.long	654                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x148:0x46 DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
	.quad	Lfunc_end3              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	181                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	55                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.byte	1                       ## DW_AT_external
	.byte	7                       ## Abbrev [7] 0x163:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	290                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	55                      ## DW_AT_decl_line
	.long	654                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x171:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	295                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	56                      ## DW_AT_decl_line
	.long	601                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x17f:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.long	255                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	57                      ## DW_AT_decl_line
	.long	728                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x18e:0x46 DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
	.quad	Lfunc_end4              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	194                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	64                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.byte	1                       ## DW_AT_external
	.byte	7                       ## Abbrev [7] 0x1a9:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	290                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	64                      ## DW_AT_decl_line
	.long	654                     ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x1b7:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	228                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	64                      ## DW_AT_decl_line
	.long	108                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x1c5:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.long	299                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	65                      ## DW_AT_decl_line
	.long	601                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x1d4:0x58 DW_TAG_subprogram
	.quad	Lfunc_begin5            ## DW_AT_low_pc
	.quad	Lfunc_end5              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	205                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	69                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	741                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	7                       ## Abbrev [7] 0x1f3:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.long	290                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	69                      ## DW_AT_decl_line
	.long	654                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x201:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	96
	.long	295                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	70                      ## DW_AT_decl_line
	.long	601                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x20f:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	88
	.long	305                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	71                      ## DW_AT_decl_line
	.long	601                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x21d:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	80
	.long	228                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	72                      ## DW_AT_decl_line
	.long	108                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	10                      ## Abbrev [10] 0x22c:0x2d DW_TAG_subprogram
	.quad	Lfunc_begin6            ## DW_AT_low_pc
	.quad	Lfunc_end6              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	215                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	83                      ## DW_AT_decl_line
	.long	721                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	8                       ## Abbrev [8] 0x24a:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	309                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	84                      ## DW_AT_decl_line
	.long	654                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	11                      ## Abbrev [11] 0x259:0x5 DW_TAG_pointer_type
	.long	606                     ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x25e:0xb DW_TAG_typedef
	.long	617                     ## DW_AT_type
	.long	220                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	8                       ## DW_AT_decl_line
	.byte	12                      ## Abbrev [12] 0x269:0x25 DW_TAG_structure_type
	.long	220                     ## DW_AT_name
	.byte	16                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	9                       ## DW_AT_decl_line
	.byte	13                      ## Abbrev [13] 0x271:0xe DW_TAG_member
	.long	223                     ## DW_AT_name
	.long	601                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	13                      ## Abbrev [13] 0x27f:0xe DW_TAG_member
	.long	228                     ## DW_AT_name
	.long	108                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	11                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	0                       ## End Of Children Mark
	.byte	11                      ## Abbrev [11] 0x28e:0x5 DW_TAG_pointer_type
	.long	659                     ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x293:0xb DW_TAG_typedef
	.long	670                     ## DW_AT_type
	.long	233                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	14                      ## DW_AT_decl_line
	.byte	12                      ## Abbrev [12] 0x29e:0x33 DW_TAG_structure_type
	.long	233                     ## DW_AT_name
	.byte	24                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.byte	13                      ## Abbrev [13] 0x2a6:0xe DW_TAG_member
	.long	239                     ## DW_AT_name
	.long	601                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	16                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	13                      ## Abbrev [13] 0x2b4:0xe DW_TAG_member
	.long	244                     ## DW_AT_name
	.long	721                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	17                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	13                      ## Abbrev [13] 0x2c2:0xe DW_TAG_member
	.long	255                     ## DW_AT_name
	.long	728                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	0                       ## End Of Children Mark
	.byte	4                       ## Abbrev [4] 0x2d1:0x7 DW_TAG_base_type
	.long	251                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	11                      ## Abbrev [11] 0x2d8:0x5 DW_TAG_pointer_type
	.long	733                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x2dd:0x8 DW_TAG_subroutine_type
	.byte	1                       ## DW_AT_prototyped
	.byte	15                      ## Abbrev [15] 0x2df:0x5 DW_TAG_formal_parameter
	.long	108                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	12                      ## Abbrev [12] 0x2e5:0x25 DW_TAG_structure_type
	.long	266                     ## DW_AT_name
	.byte	16                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.byte	13                      ## Abbrev [13] 0x2ed:0xe DW_TAG_member
	.long	228                     ## DW_AT_name
	.long	108                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	22                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	13                      ## Abbrev [13] 0x2fb:0xe DW_TAG_member
	.long	278                     ## DW_AT_name
	.long	68                      ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	23                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
Lcu_macro_begin0:
	.byte	0                       ## End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	9                       ## Header Bucket Count
	.long	9                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	2                       ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	4                       ## Bucket 3
	.long	6                       ## Bucket 4
	.long	-1                      ## Bucket 5
	.long	-1                      ## Bucket 6
	.long	7                       ## Bucket 7
	.long	-1                      ## Bucket 8
	.long	420607566               ## Hash in Bucket 0
	.long	1834860681              ## Hash in Bucket 0
	.long	220774096               ## Hash in Bucket 1
	.long	-2144276400             ## Hash in Bucket 1
	.long	420867066               ## Hash in Bucket 3
	.long	1138954575              ## Hash in Bucket 3
	.long	-1726116147             ## Hash in Bucket 4
	.long	2089620421              ## Hash in Bucket 7
	.long	2090499946              ## Hash in Bucket 7
	.long	LNames5-Lnames_begin    ## Offset in Bucket 0
	.long	LNames1-Lnames_begin    ## Offset in Bucket 0
	.long	LNames7-Lnames_begin    ## Offset in Bucket 1
	.long	LNames8-Lnames_begin    ## Offset in Bucket 1
	.long	LNames2-Lnames_begin    ## Offset in Bucket 3
	.long	LNames6-Lnames_begin    ## Offset in Bucket 3
	.long	LNames4-Lnames_begin    ## Offset in Bucket 4
	.long	LNames0-Lnames_begin    ## Offset in Bucket 7
	.long	LNames3-Lnames_begin    ## Offset in Bucket 7
LNames5:
	.long	170                     ## stack_init
	.long	1                       ## Num DIEs
	.long	268
	.long	0
LNames1:
	.long	205                     ## stack_pop
	.long	1                       ## Num DIEs
	.long	468
	.long	0
LNames7:
	.long	105                     ## False
	.long	1                       ## Num DIEs
	.long	86
	.long	0
LNames8:
	.long	152                     ## ll_init
	.long	1                       ## Num DIEs
	.long	138
	.long	0
LNames2:
	.long	194                     ## stack_push
	.long	1                       ## Num DIEs
	.long	398
	.long	0
LNames6:
	.long	160                     ## ll_delete
	.long	1                       ## Num DIEs
	.long	212
	.long	0
LNames4:
	.long	181                     ## stack_delete
	.long	1                       ## Num DIEs
	.long	328
	.long	0
LNames0:
	.long	87                      ## True
	.long	1                       ## Num DIEs
	.long	46
	.long	0
LNames3:
	.long	215                     ## main
	.long	1                       ## Num DIEs
	.long	556
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	9                       ## Header Bucket Count
	.long	9                       ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	2                       ## Bucket 2
	.long	-1                      ## Bucket 3
	.long	4                       ## Bucket 4
	.long	5                       ## Bucket 5
	.long	6                       ## Bucket 6
	.long	7                       ## Bucket 7
	.long	8                       ## Bucket 8
	.long	5863581                 ## Hash in Bucket 0
	.long	274810843               ## Hash in Bucket 1
	.long	193495088               ## Hash in Bucket 2
	.long	-80380739               ## Hash in Bucket 2
	.long	-2037575547             ## Hash in Bucket 4
	.long	1003492220              ## Hash in Bucket 5
	.long	466678419               ## Hash in Bucket 6
	.long	-282664779              ## Hash in Bucket 7
	.long	2090147939              ## Hash in Bucket 8
	.long	Ltypes5-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes2-Ltypes_begin    ## Offset in Bucket 1
	.long	Ltypes6-Ltypes_begin    ## Offset in Bucket 2
	.long	Ltypes4-Ltypes_begin    ## Offset in Bucket 2
	.long	Ltypes0-Ltypes_begin    ## Offset in Bucket 4
	.long	Ltypes3-Ltypes_begin    ## Offset in Bucket 5
	.long	Ltypes8-Ltypes_begin    ## Offset in Bucket 6
	.long	Ltypes1-Ltypes_begin    ## Offset in Bucket 7
	.long	Ltypes7-Ltypes_begin    ## Offset in Bucket 8
Ltypes5:
	.long	220                     ## ll
	.long	2                       ## Num DIEs
	.long	606
	.short	22
	.byte	0
	.long	617
	.short	19
	.byte	0
	.long	0
Ltypes2:
	.long	233                     ## stack
	.long	2                       ## Num DIEs
	.long	659
	.short	22
	.byte	0
	.long	670
	.short	19
	.byte	0
	.long	0
Ltypes6:
	.long	251                     ## int
	.long	1                       ## Num DIEs
	.long	721
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	134                     ## long unsigned int
	.long	1                       ## Num DIEs
	.long	131
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	92                      ## boolean
	.long	1                       ## Num DIEs
	.long	68
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	266                     ## stack_pop_t
	.long	1                       ## Num DIEs
	.long	741
	.short	19
	.byte	0
	.long	0
Ltypes8:
	.long	111                     ## size_t
	.long	1                       ## Num DIEs
	.long	109
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	118                     ## __darwin_size_t
	.long	1                       ## Num DIEs
	.long	120
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	100                     ## char
	.long	1                       ## Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
	.section	__DWARF,__apple_exttypes,regular,debug
Lexttypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	7                       ## DW_ATOM_ext_types
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0

.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
