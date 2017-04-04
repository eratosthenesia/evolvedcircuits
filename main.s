	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	__Z11LoadShadersPKcS0_
	.align	4, 0x90
__Z11LoadShadersPKcS0_:                 ## @_Z11LoadShadersPKcS0_
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp237:
	.cfi_def_cfa_offset 16
Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp239:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1544, %rsp             ## imm = 0x608
Ltmp240:
	.cfi_offset %rbx, -56
Ltmp241:
	.cfi_offset %r12, -48
Ltmp242:
	.cfi_offset %r13, -40
Ltmp243:
	.cfi_offset %r14, -32
Ltmp244:
	.cfi_offset %r15, -24
	movq	%rsi, -1528(%rbp)       ## 8-byte Spill
	movq	%rdi, -1520(%rbp)       ## 8-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %r12
	movq	(%r12), %r12
	movq	%r12, -48(%rbp)
	movq	___glewCreateShader@GOTPCREL(%rip), %rbx
	movl	$35633, %edi            ## imm = 0x8B31
	callq	*(%rbx)
	movl	%eax, -1496(%rbp)       ## 4-byte Spill
	movl	$35632, %edi            ## imm = 0x8B30
	callq	*(%rbx)
	movl	%eax, -1556(%rbp)       ## 4-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -1248(%rbp)
	movq	$0, -1232(%rbp)
	leaq	-200(%rbp), %r15
	leaq	-608(%rbp), %r14
	movq	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rbx
	movq	%rbx, -200(%rbp)
	addq	$24, %rax
	movd	%rax, %xmm0
	movaps	%xmm0, -1552(%rbp)      ## 16-byte Spill
	movaps	%xmm0, -624(%rbp)
Ltmp0:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp1:
## BB#1:
	movq	$0, -64(%rbp)
	movl	$-1, -56(%rbp)
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, -1512(%rbp)       ## 8-byte Spill
	movq	%rcx, -624(%rbp)
	addq	$64, %rax
	movq	%rax, -1504(%rbp)       ## 8-byte Spill
	movq	%rax, -200(%rbp)
Ltmp3:
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Ltmp4:
## BB#2:
	cmpq	$0, -488(%rbp)
	jne	LBB0_14
## BB#3:
Ltmp6:
	leaq	L_.str.14(%rip), %rsi
	movq	-1520(%rbp), %rdi       ## 8-byte Reload
	callq	_fopen
Ltmp7:
## BB#4:
	movq	%rax, -488(%rbp)
	testq	%rax, %rax
	je	LBB0_14
## BB#5:
	movl	$8, -216(%rbp)
	jmp	LBB0_16
LBB0_14:
	movq	-624(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	-624(%rbp,%rax), %rdi
	movl	-592(%rbp,%rax), %esi
	orl	$4, %esi
Ltmp8:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp9:
## BB#15:
	cmpq	$0, -488(%rbp)
	je	LBB0_193
LBB0_16:
	movq	%rbx, -1568(%rbp)       ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -1280(%rbp)
	movq	$0, -1264(%rbp)
Ltmp18:
	leaq	L_.str(%rip), %rsi
	leaq	-1280(%rbp), %rdi
	xorl	%edx, %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp19:
## BB#17:
	leaq	-624(%rbp), %rbx
	leaq	-1216(%rbp), %r15
	leaq	-1280(%rbp), %r13
	leaq	-1304(%rbp), %r14
	.align	4, 0x90
LBB0_18:                                ## =>This Inner Loop Header: Depth=1
	movq	-624(%rbp), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
Ltmp20:
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp21:
## BB#19:                               ##   in Loop: Header=BB0_18 Depth=1
Ltmp22:
	movq	%r15, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp23:
## BB#20:                               ##   in Loop: Header=BB0_18 Depth=1
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp24:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r12b
Ltmp25:
## BB#21:                               ##   in Loop: Header=BB0_18 Depth=1
Ltmp30:
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp31:
## BB#22:                               ##   in Loop: Header=BB0_18 Depth=1
Ltmp32:
	movsbl	%r12b, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp33:
## BB#23:                               ##   in Loop: Header=BB0_18 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB0_35
## BB#24:                               ##   in Loop: Header=BB0_18 Depth=1
Ltmp190:
	movq	%r14, %rdi
	leaq	L_.str.1(%rip), %rsi
	movq	%r13, %rdx
	callq	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
Ltmp191:
## BB#25:                               ##   in Loop: Header=BB0_18 Depth=1
	movzbl	-1304(%rbp), %edx
	movb	%dl, %al
	andb	$1, %al
	movq	-1288(%rbp), %rsi
	leaq	-1303(%rbp), %rcx
	cmoveq	%rcx, %rsi
	shrq	%rdx
	testb	%al, %al
	cmovneq	-1296(%rbp), %rdx
Ltmp192:
	leaq	-1248(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp193:
## BB#26:                               ##   in Loop: Header=BB0_18 Depth=1
Ltmp197:
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp198:
	jmp	LBB0_18
LBB0_29:
Ltmp199:
LBB0_31:
	movq	%rax, %r14
	jmp	LBB0_32
LBB0_35:
	movq	-488(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB0_39
## BB#36:
	movq	-608(%rbp), %rax
	movq	48(%rax), %rax
Ltmp34:
	leaq	-608(%rbp), %rdi
	callq	*%rax
	movl	%eax, %r14d
Ltmp35:
## BB#37:
	movq	%rbx, %rdi
	callq	_fclose
	testl	%eax, %eax
	jne	LBB0_39
## BB#38:
	testl	%r14d, %r14d
	movq	$0, -488(%rbp)
	je	LBB0_40
LBB0_39:
	movq	-624(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	-624(%rbp,%rax), %rdi
	movl	-592(%rbp,%rax), %esi
	orl	$4, %esi
Ltmp37:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp38:
LBB0_40:
Ltmp40:
	leaq	-1280(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp41:
## BB#41:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -1328(%rbp)
	movq	$0, -1312(%rbp)
	leaq	-776(%rbp), %rdi
	leaq	-1184(%rbp), %rbx
	movq	-1568(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -776(%rbp)
	movaps	-1552(%rbp), %xmm0      ## 16-byte Reload
	movaps	%xmm0, -1200(%rbp)
Ltmp43:
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp44:
## BB#42:
	movq	$0, -640(%rbp)
	movl	$-1, -632(%rbp)
	movq	-1512(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1200(%rbp)
	movq	-1504(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -776(%rbp)
Ltmp46:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Ltmp47:
## BB#43:
	cmpq	$0, -1064(%rbp)
	jne	LBB0_55
## BB#44:
Ltmp49:
	leaq	L_.str.14(%rip), %rsi
	movq	-1528(%rbp), %rdi       ## 8-byte Reload
	callq	_fopen
Ltmp50:
## BB#45:
	movq	%rax, -1064(%rbp)
	testq	%rax, %rax
	je	LBB0_55
## BB#46:
	movl	$8, -792(%rbp)
	jmp	LBB0_57
LBB0_55:
	movq	-1200(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	-1200(%rbp,%rax), %rdi
	movl	-1168(%rbp,%rax), %esi
	orl	$4, %esi
Ltmp51:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp52:
## BB#56:
	cmpq	$0, -1064(%rbp)
	je	LBB0_88
LBB0_57:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -1360(%rbp)
	movq	$0, -1344(%rbp)
Ltmp61:
	leaq	L_.str(%rip), %rsi
	leaq	-1360(%rbp), %rdi
	xorl	%edx, %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp62:
## BB#58:
	leaq	-1200(%rbp), %r15
	leaq	-1208(%rbp), %rbx
	leaq	-1360(%rbp), %r13
	leaq	-1384(%rbp), %r14
	.align	4, 0x90
LBB0_59:                                ## =>This Inner Loop Header: Depth=1
	movq	-1200(%rbp), %rax
	movq	-24(%rax), %rsi
	addq	%r15, %rsi
Ltmp64:
	movq	%rbx, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp65:
## BB#60:                               ##   in Loop: Header=BB0_59 Depth=1
Ltmp66:
	movq	%rbx, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp67:
## BB#61:                               ##   in Loop: Header=BB0_59 Depth=1
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp68:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r12b
Ltmp69:
## BB#62:                               ##   in Loop: Header=BB0_59 Depth=1
Ltmp74:
	movq	%rbx, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp75:
## BB#63:                               ##   in Loop: Header=BB0_59 Depth=1
Ltmp76:
	movsbl	%r12b, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp77:
## BB#64:                               ##   in Loop: Header=BB0_59 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB0_82
## BB#65:                               ##   in Loop: Header=BB0_59 Depth=1
Ltmp87:
	movq	%r14, %rdi
	leaq	L_.str.1(%rip), %rsi
	movq	%r13, %rdx
	callq	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
Ltmp88:
## BB#66:                               ##   in Loop: Header=BB0_59 Depth=1
	movzbl	-1384(%rbp), %edx
	movb	%dl, %al
	andb	$1, %al
	movq	-1368(%rbp), %rsi
	leaq	-1383(%rbp), %rcx
	cmoveq	%rcx, %rsi
	shrq	%rdx
	testb	%al, %al
	cmovneq	-1376(%rbp), %rdx
Ltmp89:
	leaq	-1328(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp90:
## BB#67:                               ##   in Loop: Header=BB0_59 Depth=1
Ltmp94:
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp95:
	jmp	LBB0_59
LBB0_76:
Ltmp96:
LBB0_78:
	movq	%rax, %r14
	jmp	LBB0_79
LBB0_82:
	movq	-1064(%rbp), %rbx
	testq	%rbx, %rbx
	leaq	-1184(%rbp), %r12
	je	LBB0_86
## BB#83:
	movq	-1184(%rbp), %rax
	movq	48(%rax), %rax
Ltmp78:
	movq	%r12, %rdi
	callq	*%rax
	movl	%eax, %r14d
Ltmp79:
## BB#84:
	movq	%rbx, %rdi
	callq	_fclose
	testl	%eax, %eax
	jne	LBB0_86
## BB#85:
	testl	%r14d, %r14d
	movq	$0, -1064(%rbp)
	je	LBB0_87
LBB0_86:
	movq	-1200(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	-1200(%rbp,%rax), %rdi
	movl	-1168(%rbp,%rax), %esi
	orl	$4, %esi
Ltmp81:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp82:
LBB0_87:
Ltmp84:
	leaq	-1360(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp85:
LBB0_88:
	movl	$0, -1388(%rbp)
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	movq	-1520(%rbp), %rsi       ## 8-byte Reload
	callq	_printf
	testb	$1, -1248(%rbp)
	leaq	-1247(%rbp), %rax
	cmovneq	-1232(%rbp), %rax
	movq	%rax, -1400(%rbp)
	movq	___glewShaderSource@GOTPCREL(%rip), %r12
	movq	(%r12), %rax
Ltmp99:
	leaq	-1400(%rbp), %rdx
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	-1496(%rbp), %ebx       ## 4-byte Reload
	movl	%ebx, %edi
	callq	*%rax
Ltmp100:
## BB#89:
	movq	___glewCompileShader@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
Ltmp101:
	movl	%ebx, %edi
	callq	*%rax
Ltmp102:
## BB#90:
	movq	___glewGetShaderiv@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
Ltmp103:
	leaq	-1388(%rbp), %rdx
	movl	$35713, %esi            ## imm = 0x8B81
	movl	%ebx, %edi
	callq	*%rax
Ltmp104:
## BB#91:
	movq	(%r15), %rax
Ltmp105:
	leaq	-1392(%rbp), %rdx
	movl	$35716, %esi            ## imm = 0x8B84
	movl	%ebx, %edi
	callq	*%rax
Ltmp106:
## BB#92:
	movslq	-1392(%rbp), %r14
	testq	%r14, %r14
	jle	LBB0_108
## BB#93:
	movq	%r14, %rbx
	incq	%rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -1424(%rbp)
	movq	$0, -1408(%rbp)
	testl	%ebx, %ebx
	je	LBB0_94
## BB#96:
Ltmp108:
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %rcx
Ltmp109:
## BB#97:
	movq	%rcx, -1416(%rbp)
	movq	%rcx, -1424(%rbp)
	movq	%rcx, %rax
	addq	%rbx, %rax
	movq	%rax, -1408(%rbp)
	leal	1(%r14), %edx
	movslq	%edx, %rsi
	leaq	-1(%rsi), %rax
	testb	$7, %sil
	je	LBB0_100
## BB#98:
	andl	$7, %edx
	negq	%rdx
	.align	4, 0x90
LBB0_99:                                ## =>This Inner Loop Header: Depth=1
	movb	$0, (%rcx)
	incq	%rcx
	decq	%rbx
	incq	%rdx
	jne	LBB0_99
LBB0_100:
	cmpq	$7, %rax
	jb	LBB0_102
	.align	4, 0x90
LBB0_101:                               ## =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx)
	addq	$8, %rcx
	addq	$-8, %rbx
	jne	LBB0_101
LBB0_102:
	movq	%rcx, -1416(%rbp)
	movl	-1392(%rbp), %r14d
	movq	-1424(%rbp), %rcx
	jmp	LBB0_103
LBB0_193:
	leaq	L_.str.2(%rip), %rdi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	-1520(%rbp), %rsi       ## 8-byte Reload
	callq	_printf
Ltmp202:
	callq	_getchar
Ltmp203:
	jmp	LBB0_194
LBB0_205:
Ltmp204:
	jmp	LBB0_206
LBB0_94:
	xorl	%ecx, %ecx
LBB0_103:
	movq	___glewGetShaderInfoLog@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
Ltmp111:
	xorl	%edx, %edx
	movl	-1496(%rbp), %edi       ## 4-byte Reload
	movl	%r14d, %esi
	callq	*%rax
Ltmp112:
## BB#104:
	movq	-1424(%rbp), %rdi
	callq	_puts
	movq	-1424(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_108
## BB#105:
	cmpq	%rdi, -1416(%rbp)
	je	LBB0_107
## BB#106:
	movq	%rdi, -1416(%rbp)
LBB0_107:
	callq	__ZdlPv
LBB0_108:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	movq	-1528(%rbp), %rsi       ## 8-byte Reload
	callq	_printf
	testb	$1, -1328(%rbp)
	leaq	-1327(%rbp), %rax
	cmovneq	-1312(%rbp), %rax
	movq	%rax, -1432(%rbp)
	movq	(%r12), %rax
Ltmp114:
	leaq	-1432(%rbp), %rdx
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	-1556(%rbp), %r12d      ## 4-byte Reload
	movl	%r12d, %edi
	callq	*%rax
Ltmp115:
## BB#109:
	movq	(%r13), %rax
Ltmp116:
	movl	%r12d, %edi
	callq	*%rax
Ltmp117:
## BB#110:
	movq	(%r15), %rax
Ltmp118:
	leaq	-1388(%rbp), %rdx
	movl	$35713, %esi            ## imm = 0x8B81
	movl	%r12d, %edi
	callq	*%rax
Ltmp119:
## BB#111:
	movq	(%r15), %rax
Ltmp120:
	leaq	-1392(%rbp), %rdx
	movl	$35716, %esi            ## imm = 0x8B84
	movl	%r12d, %edi
	callq	*%rax
Ltmp121:
## BB#112:
	movslq	-1392(%rbp), %r14
	testq	%r14, %r14
	jle	LBB0_136
## BB#113:
	movq	%r14, %rbx
	incq	%rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -1456(%rbp)
	movq	$0, -1440(%rbp)
	testl	%ebx, %ebx
	je	LBB0_114
## BB#124:
Ltmp122:
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %rcx
Ltmp123:
## BB#125:
	movq	%rcx, -1448(%rbp)
	movq	%rcx, -1456(%rbp)
	movq	%rcx, %rax
	addq	%rbx, %rax
	movq	%rax, -1440(%rbp)
	leal	1(%r14), %edx
	movslq	%edx, %rsi
	leaq	-1(%rsi), %rax
	testb	$7, %sil
	je	LBB0_128
## BB#126:
	andl	$7, %edx
	negq	%rdx
	.align	4, 0x90
LBB0_127:                               ## =>This Inner Loop Header: Depth=1
	movb	$0, (%rcx)
	incq	%rcx
	decq	%rbx
	incq	%rdx
	jne	LBB0_127
LBB0_128:
	cmpq	$7, %rax
	jb	LBB0_130
	.align	4, 0x90
LBB0_129:                               ## =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx)
	addq	$8, %rcx
	addq	$-8, %rbx
	jne	LBB0_129
LBB0_130:
	movq	%rcx, -1448(%rbp)
	movl	-1392(%rbp), %r14d
	movq	-1456(%rbp), %rcx
	jmp	LBB0_131
LBB0_114:
	xorl	%ecx, %ecx
LBB0_131:
	movq	___glewGetShaderInfoLog@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
Ltmp125:
	xorl	%edx, %edx
	movl	%r12d, %edi
	movl	%r14d, %esi
	callq	*%rax
Ltmp126:
## BB#132:
	movq	-1456(%rbp), %rdi
	callq	_puts
	movq	-1456(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_136
## BB#133:
	cmpq	%rdi, -1448(%rbp)
	je	LBB0_135
## BB#134:
	movq	%rdi, -1448(%rbp)
LBB0_135:
	callq	__ZdlPv
LBB0_136:
	leaq	L_str(%rip), %rdi
	callq	_puts
	movq	___glewCreateProgram@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
Ltmp128:
	callq	*%rax
	movl	%eax, %r14d
Ltmp129:
## BB#137:
	movl	%r12d, %r13d
	movq	___glewAttachShader@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
Ltmp131:
	movl	%r14d, %edi
	movl	-1496(%rbp), %esi       ## 4-byte Reload
	callq	*%rax
Ltmp132:
	movq	___stack_chk_guard@GOTPCREL(%rip), %r12
	movq	(%r12), %r12
## BB#138:
	movq	(%rbx), %rax
Ltmp133:
	movl	%r14d, %edi
	movl	%r13d, %esi
	callq	*%rax
Ltmp134:
## BB#139:
	movq	___glewLinkProgram@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
Ltmp135:
	movl	%r14d, %edi
	callq	*%rax
Ltmp136:
## BB#140:
	movq	___glewGetProgramiv@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
Ltmp137:
	leaq	-1388(%rbp), %rdx
	movl	$35714, %esi            ## imm = 0x8B82
	movl	%r14d, %edi
	callq	*%rax
Ltmp138:
## BB#141:
	movq	(%rbx), %rax
Ltmp139:
	leaq	-1392(%rbp), %rdx
	movl	$35716, %esi            ## imm = 0x8B84
	movl	%r14d, %edi
	callq	*%rax
Ltmp140:
## BB#142:
	movslq	-1392(%rbp), %r15
	testq	%r15, %r15
	jle	LBB0_166
## BB#143:
	movq	%r15, %rbx
	incq	%rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -1488(%rbp)
	movq	$0, -1472(%rbp)
	testl	%ebx, %ebx
	je	LBB0_144
## BB#154:
Ltmp141:
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %rcx
Ltmp142:
## BB#155:
	movq	%rcx, -1480(%rbp)
	movq	%rcx, -1488(%rbp)
	movq	%rcx, %rax
	addq	%rbx, %rax
	movq	%rax, -1472(%rbp)
	leal	1(%r15), %edx
	movslq	%edx, %rsi
	leaq	-1(%rsi), %rax
	testb	$7, %sil
	je	LBB0_158
## BB#156:
	andl	$7, %edx
	negq	%rdx
	.align	4, 0x90
LBB0_157:                               ## =>This Inner Loop Header: Depth=1
	movb	$0, (%rcx)
	incq	%rcx
	decq	%rbx
	incq	%rdx
	jne	LBB0_157
LBB0_158:
	cmpq	$7, %rax
	jb	LBB0_160
	.align	4, 0x90
LBB0_159:                               ## =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx)
	addq	$8, %rcx
	addq	$-8, %rbx
	jne	LBB0_159
LBB0_160:
	movq	%rcx, -1480(%rbp)
	movl	-1392(%rbp), %r15d
	movq	-1488(%rbp), %rcx
	jmp	LBB0_161
LBB0_144:
	xorl	%ecx, %ecx
LBB0_161:
	movq	___glewGetProgramInfoLog@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
Ltmp144:
	xorl	%edx, %edx
	movl	%r14d, %edi
	movl	%r15d, %esi
	callq	*%rax
Ltmp145:
## BB#162:
	movq	-1488(%rbp), %rdi
	callq	_puts
	movq	-1488(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_166
## BB#163:
	cmpq	%rdi, -1480(%rbp)
	je	LBB0_165
## BB#164:
	movq	%rdi, -1480(%rbp)
LBB0_165:
	callq	__ZdlPv
LBB0_166:
	movq	___glewDetachShader@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
Ltmp147:
	movl	%r14d, %edi
	movl	-1496(%rbp), %esi       ## 4-byte Reload
	callq	*%rax
Ltmp148:
## BB#167:
	movq	(%rbx), %rax
Ltmp149:
	movl	%r14d, %edi
	movl	%r13d, %esi
	callq	*%rax
Ltmp150:
## BB#168:
	movq	___glewDeleteShader@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
Ltmp151:
	movl	-1496(%rbp), %edi       ## 4-byte Reload
	callq	*%rax
Ltmp152:
## BB#169:
	movq	(%rbx), %rax
Ltmp153:
	movl	%r13d, %edi
	callq	*%rax
Ltmp154:
## BB#170:
	movq	-1512(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1200(%rbp)
	movq	-1504(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -776(%rbp)
Ltmp170:
	leaq	-1184(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp171:
## BB#171:
Ltmp176:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-1200(%rbp), %rdi
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp177:
## BB#172:
Ltmp182:
	leaq	-776(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp183:
## BB#173:
Ltmp187:
	leaq	-1328(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp188:
LBB0_194:
	movq	-1512(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -624(%rbp)
	movq	-1504(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
Ltmp219:
	leaq	-608(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp220:
## BB#195:
Ltmp225:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp226:
## BB#196:
Ltmp231:
	movq	%r15, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp232:
## BB#197:
	leaq	-1248(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	cmpq	-48(%rbp), %r12
	jne	LBB0_198
## BB#203:
	movl	%r14d, %eax
	addq	$1544, %rsp             ## imm = 0x608
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_27:
Ltmp26:
	movq	%rax, %r14
Ltmp27:
	leaq	-1216(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp28:
LBB0_32:
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
LBB0_33:
Ltmp200:
	leaq	-1280(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp201:
	jmp	LBB0_207
LBB0_68:
Ltmp70:
	movq	%rax, %r14
Ltmp71:
	leaq	-1208(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp72:
LBB0_79:
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
	leaq	-1184(%rbp), %r12
LBB0_80:
Ltmp97:
	leaq	-1360(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp98:
LBB0_73:
	movq	-1512(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1200(%rbp)
	movq	-1504(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -776(%rbp)
Ltmp156:
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp157:
## BB#74:
Ltmp162:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-1200(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp163:
## BB#75:
Ltmp168:
	leaq	-776(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp169:
LBB0_53:
Ltmp185:
	leaq	-1328(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp186:
LBB0_207:
	movq	-1512(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -624(%rbp)
	movq	-1504(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
Ltmp205:
	leaq	-608(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp206:
## BB#208:
Ltmp211:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp212:
## BB#209:
Ltmp217:
	movq	%r15, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp218:
LBB0_11:
Ltmp234:
	leaq	-1248(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp235:
## BB#12:
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB0_34:
Ltmp194:
	movq	%rax, %r14
Ltmp195:
	leaq	-1304(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp196:
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
	jmp	LBB0_33
LBB0_81:
Ltmp91:
	movq	%rax, %r14
Ltmp92:
	leaq	-1384(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp93:
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
	leaq	-1184(%rbp), %r12
	jmp	LBB0_80
LBB0_213:
Ltmp236:
	movq	%rax, %rbx
	jmp	LBB0_214
LBB0_178:
Ltmp155:
	jmp	LBB0_71
LBB0_149:
Ltmp130:
	jmp	LBB0_71
LBB0_119:
Ltmp107:
LBB0_71:
	movq	%rax, %r14
LBB0_72:
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
	leaq	-1184(%rbp), %r12
	jmp	LBB0_73
LBB0_8:
Ltmp10:
	movq	%r14, %rdi
	movq	%rax, %r14
Ltmp11:
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp12:
	jmp	LBB0_9
LBB0_6:
Ltmp2:
	movq	%rax, %r14
	jmp	LBB0_10
LBB0_7:
Ltmp5:
	movq	%rax, %r14
LBB0_9:
Ltmp13:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp14:
LBB0_10:
Ltmp15:
	movq	%r15, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp16:
	jmp	LBB0_11
LBB0_13:
Ltmp17:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_199:
Ltmp221:
	movq	%r15, %rbx
	movq	%rax, %r14
Ltmp222:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp223:
	jmp	LBB0_201
LBB0_220:
Ltmp224:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_200:
Ltmp227:
	movq	%r15, %rbx
	movq	%rax, %r14
LBB0_201:
Ltmp228:
	movq	%rbx, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp229:
	jmp	LBB0_11
LBB0_202:
Ltmp230:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_204:
Ltmp233:
	movq	%rax, %r14
	jmp	LBB0_11
LBB0_198:
	callq	___stack_chk_fail
LBB0_50:
Ltmp53:
	movq	%rax, %r14
Ltmp54:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp55:
	jmp	LBB0_51
LBB0_47:
Ltmp42:
	movq	%rax, %r14
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
	jmp	LBB0_207
LBB0_48:
Ltmp45:
	movq	%rax, %r14
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
	jmp	LBB0_52
LBB0_49:
Ltmp48:
	movq	%rax, %r14
LBB0_51:
Ltmp56:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-1200(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp57:
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
LBB0_52:
Ltmp58:
	leaq	-776(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp59:
	jmp	LBB0_53
LBB0_54:
Ltmp60:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_183:
Ltmp172:
	movq	%rax, %r14
Ltmp173:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-1200(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp174:
	jmp	LBB0_185
LBB0_217:
Ltmp175:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_184:
Ltmp178:
	movq	%rax, %r14
LBB0_185:
Ltmp179:
	leaq	-776(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp180:
	jmp	LBB0_187
LBB0_218:
Ltmp181:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_186:
Ltmp184:
	movq	%rax, %r14
LBB0_187:
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
	jmp	LBB0_53
LBB0_192:
Ltmp189:
LBB0_206:
	movq	%rax, %r14
	jmp	LBB0_207
LBB0_30:
Ltmp39:
	jmp	LBB0_31
LBB0_70:
Ltmp63:
	jmp	LBB0_71
LBB0_95:
Ltmp86:
	movq	%rax, %r14
	leaq	-200(%rbp), %rbx
	movq	%rbx, %r15
	jmp	LBB0_73
LBB0_77:
Ltmp83:
	jmp	LBB0_78
LBB0_215:
Ltmp36:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_fclose
	jmp	LBB0_32
LBB0_120:
Ltmp113:
	movq	%rax, %r14
	movq	-1424(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_72
## BB#121:
	cmpq	%rdi, -1416(%rbp)
	je	LBB0_123
## BB#122:
	movq	%rdi, -1416(%rbp)
LBB0_123:
	callq	__ZdlPv
	jmp	LBB0_72
LBB0_150:
Ltmp127:
	movq	%rax, %r14
	movq	-1456(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_72
## BB#151:
	cmpq	%rdi, -1448(%rbp)
	je	LBB0_153
## BB#152:
	movq	%rdi, -1448(%rbp)
LBB0_153:
	callq	__ZdlPv
	jmp	LBB0_72
LBB0_179:
Ltmp146:
	movq	%rax, %r14
	movq	-1488(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_72
## BB#180:
	cmpq	%rdi, -1480(%rbp)
	je	LBB0_182
## BB#181:
	movq	%rdi, -1480(%rbp)
LBB0_182:
	callq	__ZdlPv
	jmp	LBB0_72
LBB0_216:
Ltmp80:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_fclose
	jmp	LBB0_79
LBB0_115:
Ltmp110:
	movq	%rax, %r14
	movq	-1424(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_72
## BB#116:
	cmpq	%rdi, -1416(%rbp)
	je	LBB0_118
## BB#117:
	movq	%rdi, -1416(%rbp)
LBB0_118:
	callq	__ZdlPv
	jmp	LBB0_72
LBB0_145:
Ltmp124:
	movq	%rax, %r14
	movq	-1456(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_72
## BB#146:
	cmpq	%rdi, -1448(%rbp)
	je	LBB0_148
## BB#147:
	movq	%rdi, -1448(%rbp)
LBB0_148:
	callq	__ZdlPv
	jmp	LBB0_72
LBB0_174:
Ltmp143:
	movq	%rax, %r14
	movq	-1488(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB0_72
## BB#175:
	cmpq	%rdi, -1480(%rbp)
	je	LBB0_177
## BB#176:
	movq	%rdi, -1480(%rbp)
LBB0_177:
	callq	__ZdlPv
	jmp	LBB0_72
LBB0_210:
Ltmp207:
	movq	%r15, %r14
	movq	%rax, %rbx
Ltmp208:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp209:
	jmp	LBB0_212
LBB0_221:
Ltmp210:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_211:
Ltmp213:
	movq	%r15, %r14
	movq	%rax, %rbx
LBB0_212:
Ltmp214:
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp215:
	jmp	LBB0_214
LBB0_222:
Ltmp216:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_188:
Ltmp158:
	movq	%rax, %rbx
Ltmp159:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-1200(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp160:
	jmp	LBB0_190
LBB0_219:
Ltmp161:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_189:
Ltmp164:
	movq	%rax, %rbx
LBB0_190:
Ltmp165:
	leaq	-776(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp166:
LBB0_214:
	movq	%rbx, %rdi
	callq	___clang_call_terminate
LBB0_28:
Ltmp29:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_69:
Ltmp73:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_191:
Ltmp167:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\375\206\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\364\006"              ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset3
Lset4 = Ltmp2-Lfunc_begin0              ##     jumps to Ltmp2
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp3-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset6
Lset7 = Ltmp5-Lfunc_begin0              ##     jumps to Ltmp5
	.long	Lset7
	.byte	0                       ##   On action: cleanup
Lset8 = Ltmp6-Lfunc_begin0              ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Ltmp9-Ltmp6                     ##   Call between Ltmp6 and Ltmp9
	.long	Lset9
Lset10 = Ltmp10-Lfunc_begin0            ##     jumps to Ltmp10
	.long	Lset10
	.byte	0                       ##   On action: cleanup
Lset11 = Ltmp18-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset11
Lset12 = Ltmp19-Ltmp18                  ##   Call between Ltmp18 and Ltmp19
	.long	Lset12
Lset13 = Ltmp204-Lfunc_begin0           ##     jumps to Ltmp204
	.long	Lset13
	.byte	0                       ##   On action: cleanup
Lset14 = Ltmp20-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset14
Lset15 = Ltmp21-Ltmp20                  ##   Call between Ltmp20 and Ltmp21
	.long	Lset15
Lset16 = Ltmp199-Lfunc_begin0           ##     jumps to Ltmp199
	.long	Lset16
	.byte	0                       ##   On action: cleanup
Lset17 = Ltmp22-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset17
Lset18 = Ltmp25-Ltmp22                  ##   Call between Ltmp22 and Ltmp25
	.long	Lset18
Lset19 = Ltmp26-Lfunc_begin0            ##     jumps to Ltmp26
	.long	Lset19
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp30-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset20
Lset21 = Ltmp191-Ltmp30                 ##   Call between Ltmp30 and Ltmp191
	.long	Lset21
Lset22 = Ltmp199-Lfunc_begin0           ##     jumps to Ltmp199
	.long	Lset22
	.byte	0                       ##   On action: cleanup
Lset23 = Ltmp192-Lfunc_begin0           ## >> Call Site 9 <<
	.long	Lset23
Lset24 = Ltmp193-Ltmp192                ##   Call between Ltmp192 and Ltmp193
	.long	Lset24
Lset25 = Ltmp194-Lfunc_begin0           ##     jumps to Ltmp194
	.long	Lset25
	.byte	0                       ##   On action: cleanup
Lset26 = Ltmp197-Lfunc_begin0           ## >> Call Site 10 <<
	.long	Lset26
Lset27 = Ltmp198-Ltmp197                ##   Call between Ltmp197 and Ltmp198
	.long	Lset27
Lset28 = Ltmp199-Lfunc_begin0           ##     jumps to Ltmp199
	.long	Lset28
	.byte	0                       ##   On action: cleanup
Lset29 = Ltmp34-Lfunc_begin0            ## >> Call Site 11 <<
	.long	Lset29
Lset30 = Ltmp35-Ltmp34                  ##   Call between Ltmp34 and Ltmp35
	.long	Lset30
Lset31 = Ltmp36-Lfunc_begin0            ##     jumps to Ltmp36
	.long	Lset31
	.byte	0                       ##   On action: cleanup
Lset32 = Ltmp37-Lfunc_begin0            ## >> Call Site 12 <<
	.long	Lset32
Lset33 = Ltmp38-Ltmp37                  ##   Call between Ltmp37 and Ltmp38
	.long	Lset33
Lset34 = Ltmp39-Lfunc_begin0            ##     jumps to Ltmp39
	.long	Lset34
	.byte	0                       ##   On action: cleanup
Lset35 = Ltmp40-Lfunc_begin0            ## >> Call Site 13 <<
	.long	Lset35
Lset36 = Ltmp41-Ltmp40                  ##   Call between Ltmp40 and Ltmp41
	.long	Lset36
Lset37 = Ltmp42-Lfunc_begin0            ##     jumps to Ltmp42
	.long	Lset37
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp43-Lfunc_begin0            ## >> Call Site 14 <<
	.long	Lset38
Lset39 = Ltmp44-Ltmp43                  ##   Call between Ltmp43 and Ltmp44
	.long	Lset39
Lset40 = Ltmp45-Lfunc_begin0            ##     jumps to Ltmp45
	.long	Lset40
	.byte	0                       ##   On action: cleanup
Lset41 = Ltmp46-Lfunc_begin0            ## >> Call Site 15 <<
	.long	Lset41
Lset42 = Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.long	Lset42
Lset43 = Ltmp48-Lfunc_begin0            ##     jumps to Ltmp48
	.long	Lset43
	.byte	0                       ##   On action: cleanup
Lset44 = Ltmp49-Lfunc_begin0            ## >> Call Site 16 <<
	.long	Lset44
Lset45 = Ltmp52-Ltmp49                  ##   Call between Ltmp49 and Ltmp52
	.long	Lset45
Lset46 = Ltmp53-Lfunc_begin0            ##     jumps to Ltmp53
	.long	Lset46
	.byte	0                       ##   On action: cleanup
Lset47 = Ltmp61-Lfunc_begin0            ## >> Call Site 17 <<
	.long	Lset47
Lset48 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset48
Lset49 = Ltmp63-Lfunc_begin0            ##     jumps to Ltmp63
	.long	Lset49
	.byte	0                       ##   On action: cleanup
Lset50 = Ltmp64-Lfunc_begin0            ## >> Call Site 18 <<
	.long	Lset50
Lset51 = Ltmp65-Ltmp64                  ##   Call between Ltmp64 and Ltmp65
	.long	Lset51
Lset52 = Ltmp96-Lfunc_begin0            ##     jumps to Ltmp96
	.long	Lset52
	.byte	0                       ##   On action: cleanup
Lset53 = Ltmp66-Lfunc_begin0            ## >> Call Site 19 <<
	.long	Lset53
Lset54 = Ltmp69-Ltmp66                  ##   Call between Ltmp66 and Ltmp69
	.long	Lset54
Lset55 = Ltmp70-Lfunc_begin0            ##     jumps to Ltmp70
	.long	Lset55
	.byte	0                       ##   On action: cleanup
Lset56 = Ltmp74-Lfunc_begin0            ## >> Call Site 20 <<
	.long	Lset56
Lset57 = Ltmp88-Ltmp74                  ##   Call between Ltmp74 and Ltmp88
	.long	Lset57
Lset58 = Ltmp96-Lfunc_begin0            ##     jumps to Ltmp96
	.long	Lset58
	.byte	0                       ##   On action: cleanup
Lset59 = Ltmp89-Lfunc_begin0            ## >> Call Site 21 <<
	.long	Lset59
Lset60 = Ltmp90-Ltmp89                  ##   Call between Ltmp89 and Ltmp90
	.long	Lset60
Lset61 = Ltmp91-Lfunc_begin0            ##     jumps to Ltmp91
	.long	Lset61
	.byte	0                       ##   On action: cleanup
Lset62 = Ltmp94-Lfunc_begin0            ## >> Call Site 22 <<
	.long	Lset62
Lset63 = Ltmp95-Ltmp94                  ##   Call between Ltmp94 and Ltmp95
	.long	Lset63
Lset64 = Ltmp96-Lfunc_begin0            ##     jumps to Ltmp96
	.long	Lset64
	.byte	0                       ##   On action: cleanup
Lset65 = Ltmp78-Lfunc_begin0            ## >> Call Site 23 <<
	.long	Lset65
Lset66 = Ltmp79-Ltmp78                  ##   Call between Ltmp78 and Ltmp79
	.long	Lset66
Lset67 = Ltmp80-Lfunc_begin0            ##     jumps to Ltmp80
	.long	Lset67
	.byte	0                       ##   On action: cleanup
Lset68 = Ltmp81-Lfunc_begin0            ## >> Call Site 24 <<
	.long	Lset68
Lset69 = Ltmp82-Ltmp81                  ##   Call between Ltmp81 and Ltmp82
	.long	Lset69
Lset70 = Ltmp83-Lfunc_begin0            ##     jumps to Ltmp83
	.long	Lset70
	.byte	0                       ##   On action: cleanup
Lset71 = Ltmp84-Lfunc_begin0            ## >> Call Site 25 <<
	.long	Lset71
Lset72 = Ltmp85-Ltmp84                  ##   Call between Ltmp84 and Ltmp85
	.long	Lset72
Lset73 = Ltmp86-Lfunc_begin0            ##     jumps to Ltmp86
	.long	Lset73
	.byte	0                       ##   On action: cleanup
Lset74 = Ltmp99-Lfunc_begin0            ## >> Call Site 26 <<
	.long	Lset74
Lset75 = Ltmp106-Ltmp99                 ##   Call between Ltmp99 and Ltmp106
	.long	Lset75
Lset76 = Ltmp107-Lfunc_begin0           ##     jumps to Ltmp107
	.long	Lset76
	.byte	0                       ##   On action: cleanup
Lset77 = Ltmp108-Lfunc_begin0           ## >> Call Site 27 <<
	.long	Lset77
Lset78 = Ltmp109-Ltmp108                ##   Call between Ltmp108 and Ltmp109
	.long	Lset78
Lset79 = Ltmp110-Lfunc_begin0           ##     jumps to Ltmp110
	.long	Lset79
	.byte	0                       ##   On action: cleanup
Lset80 = Ltmp202-Lfunc_begin0           ## >> Call Site 28 <<
	.long	Lset80
Lset81 = Ltmp203-Ltmp202                ##   Call between Ltmp202 and Ltmp203
	.long	Lset81
Lset82 = Ltmp204-Lfunc_begin0           ##     jumps to Ltmp204
	.long	Lset82
	.byte	0                       ##   On action: cleanup
Lset83 = Ltmp111-Lfunc_begin0           ## >> Call Site 29 <<
	.long	Lset83
Lset84 = Ltmp112-Ltmp111                ##   Call between Ltmp111 and Ltmp112
	.long	Lset84
Lset85 = Ltmp113-Lfunc_begin0           ##     jumps to Ltmp113
	.long	Lset85
	.byte	0                       ##   On action: cleanup
Lset86 = Ltmp114-Lfunc_begin0           ## >> Call Site 30 <<
	.long	Lset86
Lset87 = Ltmp121-Ltmp114                ##   Call between Ltmp114 and Ltmp121
	.long	Lset87
Lset88 = Ltmp130-Lfunc_begin0           ##     jumps to Ltmp130
	.long	Lset88
	.byte	0                       ##   On action: cleanup
Lset89 = Ltmp122-Lfunc_begin0           ## >> Call Site 31 <<
	.long	Lset89
Lset90 = Ltmp123-Ltmp122                ##   Call between Ltmp122 and Ltmp123
	.long	Lset90
Lset91 = Ltmp124-Lfunc_begin0           ##     jumps to Ltmp124
	.long	Lset91
	.byte	0                       ##   On action: cleanup
Lset92 = Ltmp125-Lfunc_begin0           ## >> Call Site 32 <<
	.long	Lset92
Lset93 = Ltmp126-Ltmp125                ##   Call between Ltmp125 and Ltmp126
	.long	Lset93
Lset94 = Ltmp127-Lfunc_begin0           ##     jumps to Ltmp127
	.long	Lset94
	.byte	0                       ##   On action: cleanup
Lset95 = Ltmp128-Lfunc_begin0           ## >> Call Site 33 <<
	.long	Lset95
Lset96 = Ltmp129-Ltmp128                ##   Call between Ltmp128 and Ltmp129
	.long	Lset96
Lset97 = Ltmp130-Lfunc_begin0           ##     jumps to Ltmp130
	.long	Lset97
	.byte	0                       ##   On action: cleanup
Lset98 = Ltmp131-Lfunc_begin0           ## >> Call Site 34 <<
	.long	Lset98
Lset99 = Ltmp140-Ltmp131                ##   Call between Ltmp131 and Ltmp140
	.long	Lset99
Lset100 = Ltmp155-Lfunc_begin0          ##     jumps to Ltmp155
	.long	Lset100
	.byte	0                       ##   On action: cleanup
Lset101 = Ltmp141-Lfunc_begin0          ## >> Call Site 35 <<
	.long	Lset101
Lset102 = Ltmp142-Ltmp141               ##   Call between Ltmp141 and Ltmp142
	.long	Lset102
Lset103 = Ltmp143-Lfunc_begin0          ##     jumps to Ltmp143
	.long	Lset103
	.byte	0                       ##   On action: cleanup
Lset104 = Ltmp144-Lfunc_begin0          ## >> Call Site 36 <<
	.long	Lset104
Lset105 = Ltmp145-Ltmp144               ##   Call between Ltmp144 and Ltmp145
	.long	Lset105
Lset106 = Ltmp146-Lfunc_begin0          ##     jumps to Ltmp146
	.long	Lset106
	.byte	0                       ##   On action: cleanup
Lset107 = Ltmp147-Lfunc_begin0          ## >> Call Site 37 <<
	.long	Lset107
Lset108 = Ltmp154-Ltmp147               ##   Call between Ltmp147 and Ltmp154
	.long	Lset108
Lset109 = Ltmp155-Lfunc_begin0          ##     jumps to Ltmp155
	.long	Lset109
	.byte	0                       ##   On action: cleanup
Lset110 = Ltmp170-Lfunc_begin0          ## >> Call Site 38 <<
	.long	Lset110
Lset111 = Ltmp171-Ltmp170               ##   Call between Ltmp170 and Ltmp171
	.long	Lset111
Lset112 = Ltmp172-Lfunc_begin0          ##     jumps to Ltmp172
	.long	Lset112
	.byte	0                       ##   On action: cleanup
Lset113 = Ltmp176-Lfunc_begin0          ## >> Call Site 39 <<
	.long	Lset113
Lset114 = Ltmp177-Ltmp176               ##   Call between Ltmp176 and Ltmp177
	.long	Lset114
Lset115 = Ltmp178-Lfunc_begin0          ##     jumps to Ltmp178
	.long	Lset115
	.byte	0                       ##   On action: cleanup
Lset116 = Ltmp182-Lfunc_begin0          ## >> Call Site 40 <<
	.long	Lset116
Lset117 = Ltmp183-Ltmp182               ##   Call between Ltmp182 and Ltmp183
	.long	Lset117
Lset118 = Ltmp184-Lfunc_begin0          ##     jumps to Ltmp184
	.long	Lset118
	.byte	0                       ##   On action: cleanup
Lset119 = Ltmp187-Lfunc_begin0          ## >> Call Site 41 <<
	.long	Lset119
Lset120 = Ltmp188-Ltmp187               ##   Call between Ltmp187 and Ltmp188
	.long	Lset120
Lset121 = Ltmp189-Lfunc_begin0          ##     jumps to Ltmp189
	.long	Lset121
	.byte	0                       ##   On action: cleanup
Lset122 = Ltmp219-Lfunc_begin0          ## >> Call Site 42 <<
	.long	Lset122
Lset123 = Ltmp220-Ltmp219               ##   Call between Ltmp219 and Ltmp220
	.long	Lset123
Lset124 = Ltmp221-Lfunc_begin0          ##     jumps to Ltmp221
	.long	Lset124
	.byte	0                       ##   On action: cleanup
Lset125 = Ltmp225-Lfunc_begin0          ## >> Call Site 43 <<
	.long	Lset125
Lset126 = Ltmp226-Ltmp225               ##   Call between Ltmp225 and Ltmp226
	.long	Lset126
Lset127 = Ltmp227-Lfunc_begin0          ##     jumps to Ltmp227
	.long	Lset127
	.byte	0                       ##   On action: cleanup
Lset128 = Ltmp231-Lfunc_begin0          ## >> Call Site 44 <<
	.long	Lset128
Lset129 = Ltmp232-Ltmp231               ##   Call between Ltmp231 and Ltmp232
	.long	Lset129
Lset130 = Ltmp233-Lfunc_begin0          ##     jumps to Ltmp233
	.long	Lset130
	.byte	0                       ##   On action: cleanup
Lset131 = Ltmp232-Lfunc_begin0          ## >> Call Site 45 <<
	.long	Lset131
Lset132 = Ltmp27-Ltmp232                ##   Call between Ltmp232 and Ltmp27
	.long	Lset132
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset133 = Ltmp27-Lfunc_begin0           ## >> Call Site 46 <<
	.long	Lset133
Lset134 = Ltmp28-Ltmp27                 ##   Call between Ltmp27 and Ltmp28
	.long	Lset134
Lset135 = Ltmp29-Lfunc_begin0           ##     jumps to Ltmp29
	.long	Lset135
	.byte	1                       ##   On action: 1
Lset136 = Ltmp200-Lfunc_begin0          ## >> Call Site 47 <<
	.long	Lset136
Lset137 = Ltmp201-Ltmp200               ##   Call between Ltmp200 and Ltmp201
	.long	Lset137
Lset138 = Ltmp236-Lfunc_begin0          ##     jumps to Ltmp236
	.long	Lset138
	.byte	1                       ##   On action: 1
Lset139 = Ltmp71-Lfunc_begin0           ## >> Call Site 48 <<
	.long	Lset139
Lset140 = Ltmp72-Ltmp71                 ##   Call between Ltmp71 and Ltmp72
	.long	Lset140
Lset141 = Ltmp73-Lfunc_begin0           ##     jumps to Ltmp73
	.long	Lset141
	.byte	1                       ##   On action: 1
Lset142 = Ltmp97-Lfunc_begin0           ## >> Call Site 49 <<
	.long	Lset142
Lset143 = Ltmp98-Ltmp97                 ##   Call between Ltmp97 and Ltmp98
	.long	Lset143
Lset144 = Ltmp236-Lfunc_begin0          ##     jumps to Ltmp236
	.long	Lset144
	.byte	1                       ##   On action: 1
Lset145 = Ltmp156-Lfunc_begin0          ## >> Call Site 50 <<
	.long	Lset145
Lset146 = Ltmp157-Ltmp156               ##   Call between Ltmp156 and Ltmp157
	.long	Lset146
Lset147 = Ltmp158-Lfunc_begin0          ##     jumps to Ltmp158
	.long	Lset147
	.byte	1                       ##   On action: 1
Lset148 = Ltmp162-Lfunc_begin0          ## >> Call Site 51 <<
	.long	Lset148
Lset149 = Ltmp163-Ltmp162               ##   Call between Ltmp162 and Ltmp163
	.long	Lset149
Lset150 = Ltmp164-Lfunc_begin0          ##     jumps to Ltmp164
	.long	Lset150
	.byte	1                       ##   On action: 1
Lset151 = Ltmp168-Lfunc_begin0          ## >> Call Site 52 <<
	.long	Lset151
Lset152 = Ltmp186-Ltmp168               ##   Call between Ltmp168 and Ltmp186
	.long	Lset152
Lset153 = Ltmp236-Lfunc_begin0          ##     jumps to Ltmp236
	.long	Lset153
	.byte	1                       ##   On action: 1
Lset154 = Ltmp205-Lfunc_begin0          ## >> Call Site 53 <<
	.long	Lset154
Lset155 = Ltmp206-Ltmp205               ##   Call between Ltmp205 and Ltmp206
	.long	Lset155
Lset156 = Ltmp207-Lfunc_begin0          ##     jumps to Ltmp207
	.long	Lset156
	.byte	1                       ##   On action: 1
Lset157 = Ltmp211-Lfunc_begin0          ## >> Call Site 54 <<
	.long	Lset157
Lset158 = Ltmp212-Ltmp211               ##   Call between Ltmp211 and Ltmp212
	.long	Lset158
Lset159 = Ltmp213-Lfunc_begin0          ##     jumps to Ltmp213
	.long	Lset159
	.byte	1                       ##   On action: 1
Lset160 = Ltmp217-Lfunc_begin0          ## >> Call Site 55 <<
	.long	Lset160
Lset161 = Ltmp235-Ltmp217               ##   Call between Ltmp217 and Ltmp235
	.long	Lset161
Lset162 = Ltmp236-Lfunc_begin0          ##     jumps to Ltmp236
	.long	Lset162
	.byte	1                       ##   On action: 1
Lset163 = Ltmp235-Lfunc_begin0          ## >> Call Site 56 <<
	.long	Lset163
Lset164 = Ltmp195-Ltmp235               ##   Call between Ltmp235 and Ltmp195
	.long	Lset164
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset165 = Ltmp195-Lfunc_begin0          ## >> Call Site 57 <<
	.long	Lset165
Lset166 = Ltmp93-Ltmp195                ##   Call between Ltmp195 and Ltmp93
	.long	Lset166
Lset167 = Ltmp236-Lfunc_begin0          ##     jumps to Ltmp236
	.long	Lset167
	.byte	1                       ##   On action: 1
Lset168 = Ltmp11-Lfunc_begin0           ## >> Call Site 58 <<
	.long	Lset168
Lset169 = Ltmp16-Ltmp11                 ##   Call between Ltmp11 and Ltmp16
	.long	Lset169
Lset170 = Ltmp17-Lfunc_begin0           ##     jumps to Ltmp17
	.long	Lset170
	.byte	1                       ##   On action: 1
Lset171 = Ltmp222-Lfunc_begin0          ## >> Call Site 59 <<
	.long	Lset171
Lset172 = Ltmp223-Ltmp222               ##   Call between Ltmp222 and Ltmp223
	.long	Lset172
Lset173 = Ltmp224-Lfunc_begin0          ##     jumps to Ltmp224
	.long	Lset173
	.byte	1                       ##   On action: 1
Lset174 = Ltmp228-Lfunc_begin0          ## >> Call Site 60 <<
	.long	Lset174
Lset175 = Ltmp229-Ltmp228               ##   Call between Ltmp228 and Ltmp229
	.long	Lset175
Lset176 = Ltmp230-Lfunc_begin0          ##     jumps to Ltmp230
	.long	Lset176
	.byte	1                       ##   On action: 1
Lset177 = Ltmp229-Lfunc_begin0          ## >> Call Site 61 <<
	.long	Lset177
Lset178 = Ltmp54-Ltmp229                ##   Call between Ltmp229 and Ltmp54
	.long	Lset178
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset179 = Ltmp54-Lfunc_begin0           ## >> Call Site 62 <<
	.long	Lset179
Lset180 = Ltmp59-Ltmp54                 ##   Call between Ltmp54 and Ltmp59
	.long	Lset180
Lset181 = Ltmp60-Lfunc_begin0           ##     jumps to Ltmp60
	.long	Lset181
	.byte	1                       ##   On action: 1
Lset182 = Ltmp173-Lfunc_begin0          ## >> Call Site 63 <<
	.long	Lset182
Lset183 = Ltmp174-Ltmp173               ##   Call between Ltmp173 and Ltmp174
	.long	Lset183
Lset184 = Ltmp175-Lfunc_begin0          ##     jumps to Ltmp175
	.long	Lset184
	.byte	1                       ##   On action: 1
Lset185 = Ltmp179-Lfunc_begin0          ## >> Call Site 64 <<
	.long	Lset185
Lset186 = Ltmp180-Ltmp179               ##   Call between Ltmp179 and Ltmp180
	.long	Lset186
Lset187 = Ltmp181-Lfunc_begin0          ##     jumps to Ltmp181
	.long	Lset187
	.byte	1                       ##   On action: 1
Lset188 = Ltmp208-Lfunc_begin0          ## >> Call Site 65 <<
	.long	Lset188
Lset189 = Ltmp209-Ltmp208               ##   Call between Ltmp208 and Ltmp209
	.long	Lset189
Lset190 = Ltmp210-Lfunc_begin0          ##     jumps to Ltmp210
	.long	Lset190
	.byte	1                       ##   On action: 1
Lset191 = Ltmp214-Lfunc_begin0          ## >> Call Site 66 <<
	.long	Lset191
Lset192 = Ltmp215-Ltmp214               ##   Call between Ltmp214 and Ltmp215
	.long	Lset192
Lset193 = Ltmp216-Lfunc_begin0          ##     jumps to Ltmp216
	.long	Lset193
	.byte	1                       ##   On action: 1
Lset194 = Ltmp159-Lfunc_begin0          ## >> Call Site 67 <<
	.long	Lset194
Lset195 = Ltmp160-Ltmp159               ##   Call between Ltmp159 and Ltmp160
	.long	Lset195
Lset196 = Ltmp161-Lfunc_begin0          ##     jumps to Ltmp161
	.long	Lset196
	.byte	1                       ##   On action: 1
Lset197 = Ltmp165-Lfunc_begin0          ## >> Call Site 68 <<
	.long	Lset197
Lset198 = Ltmp166-Ltmp165               ##   Call between Ltmp165 and Ltmp166
	.long	Lset198
Lset199 = Ltmp167-Lfunc_begin0          ##     jumps to Ltmp167
	.long	Lset199
	.byte	1                       ##   On action: 1
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
	.weak_def_can_be_hidden	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
	.align	4, 0x90
__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_: ## @_ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp253:
	.cfi_def_cfa_offset 16
Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp255:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp256:
	.cfi_offset %rbx, -48
Ltmp257:
	.cfi_offset %r12, -40
Ltmp258:
	.cfi_offset %r14, -32
Ltmp259:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	$0, 16(%r14)
	movq	$0, 8(%r14)
	movq	$0, (%r14)
	movq	%r12, %rdi
	callq	_strlen
	movzbl	(%r15), %ecx
	movq	%rcx, %rbx
	shrq	%rbx
	testb	$1, %cl
	cmovneq	8(%r15), %rbx
	leaq	(%rbx,%rax), %rcx
Ltmp245:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcmm
Ltmp246:
## BB#1:
	leaq	1(%r15), %rsi
	testb	$1, (%r15)
	cmovneq	16(%r15), %rsi
Ltmp247:
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp248:
## BB#2:
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_3:
Ltmp249:
	movq	%rax, %rbx
Ltmp250:
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp251:
## BB#4:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB1_5:
Ltmp252:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table1:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\257\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset200 = Ltmp245-Lfunc_begin1          ## >> Call Site 1 <<
	.long	Lset200
Lset201 = Ltmp248-Ltmp245               ##   Call between Ltmp245 and Ltmp248
	.long	Lset201
Lset202 = Ltmp249-Lfunc_begin1          ##     jumps to Ltmp249
	.long	Lset202
	.byte	0                       ##   On action: cleanup
Lset203 = Ltmp250-Lfunc_begin1          ## >> Call Site 2 <<
	.long	Lset203
Lset204 = Ltmp251-Ltmp250               ##   Call between Ltmp250 and Ltmp251
	.long	Lset204
Lset205 = Ltmp252-Lfunc_begin1          ##     jumps to Ltmp252
	.long	Lset205
	.byte	1                       ##   On action: 1
Lset206 = Ltmp251-Lfunc_begin1          ## >> Call Site 3 <<
	.long	Lset206
Lset207 = Lfunc_end1-Ltmp251            ##   Call between Ltmp251 and Lfunc_end1
	.long	Lset207
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev

	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.align	4, 0x90
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Ltmp272:
	.cfi_def_cfa_offset 16
Ltmp273:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp274:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp275:
	.cfi_offset %rbx, -40
Ltmp276:
	.cfi_offset %r14, -32
Ltmp277:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	leaq	424(%rbx), %r14
	addq	$64, %rax
	movq	%rax, 424(%rbx)
	leaq	16(%rbx), %rdi
Ltmp260:
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp261:
## BB#1:
Ltmp266:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp267:
## BB#2:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
LBB3_3:
Ltmp262:
	movq	%rax, %r15
Ltmp263:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp264:
	jmp	LBB3_5
LBB3_8:
Ltmp265:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_4:
Ltmp268:
	movq	%rax, %r15
LBB3_5:
Ltmp269:
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp270:
## BB#6:
	movq	%r15, %rdi
	callq	__Unwind_Resume
LBB3_7:
Ltmp271:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table3:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\326\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset208 = Ltmp260-Lfunc_begin2          ## >> Call Site 1 <<
	.long	Lset208
Lset209 = Ltmp261-Ltmp260               ##   Call between Ltmp260 and Ltmp261
	.long	Lset209
Lset210 = Ltmp262-Lfunc_begin2          ##     jumps to Ltmp262
	.long	Lset210
	.byte	0                       ##   On action: cleanup
Lset211 = Ltmp266-Lfunc_begin2          ## >> Call Site 2 <<
	.long	Lset211
Lset212 = Ltmp267-Ltmp266               ##   Call between Ltmp266 and Ltmp267
	.long	Lset212
Lset213 = Ltmp268-Lfunc_begin2          ##     jumps to Ltmp268
	.long	Lset213
	.byte	0                       ##   On action: cleanup
Lset214 = Ltmp267-Lfunc_begin2          ## >> Call Site 3 <<
	.long	Lset214
Lset215 = Ltmp263-Ltmp267               ##   Call between Ltmp267 and Ltmp263
	.long	Lset215
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset216 = Ltmp263-Lfunc_begin2          ## >> Call Site 4 <<
	.long	Lset216
Lset217 = Ltmp264-Ltmp263               ##   Call between Ltmp263 and Ltmp264
	.long	Lset217
Lset218 = Ltmp265-Lfunc_begin2          ##     jumps to Ltmp265
	.long	Lset218
	.byte	1                       ##   On action: 1
Lset219 = Ltmp269-Lfunc_begin2          ## >> Call Site 5 <<
	.long	Lset219
Lset220 = Ltmp270-Ltmp269               ##   Call between Ltmp269 and Ltmp270
	.long	Lset220
Lset221 = Ltmp271-Lfunc_begin2          ##     jumps to Ltmp271
	.long	Lset221
	.byte	1                       ##   On action: 1
Lset222 = Ltmp270-Lfunc_begin2          ## >> Call Site 6 <<
	.long	Lset222
Lset223 = Lfunc_end2-Ltmp270            ##   Call between Ltmp270 and Lfunc_end2
	.long	Lset223
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI4_0:
	.long	1053609165              ## float 0.400000006
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp278:
	.cfi_def_cfa_offset 16
Ltmp279:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp280:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp281:
	.cfi_offset %rbx, -56
Ltmp282:
	.cfi_offset %r12, -48
Ltmp283:
	.cfi_offset %r13, -40
Ltmp284:
	.cfi_offset %r14, -32
Ltmp285:
	.cfi_offset %r15, -24
	callq	_glfwInit
	testl	%eax, %eax
	je	LBB4_1
## BB#2:
	movl	$135181, %edi           ## imm = 0x2100D
	movl	$4, %esi
	callq	_glfwWindowHint
	movl	$139266, %edi           ## imm = 0x22002
	movl	$3, %esi
	callq	_glfwWindowHint
	movl	$139267, %edi           ## imm = 0x22003
	movl	$3, %esi
	callq	_glfwWindowHint
	movl	$139270, %edi           ## imm = 0x22006
	movl	$1, %esi
	callq	_glfwWindowHint
	movl	$139272, %edi           ## imm = 0x22008
	movl	$204801, %esi           ## imm = 0x32001
	callq	_glfwWindowHint
	leaq	L_.str.7(%rip), %rdx
	movl	$1024, %edi             ## imm = 0x400
	movl	$768, %esi              ## imm = 0x300
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	_glfwCreateWindow
	movq	%rax, _window(%rip)
	testq	%rax, %rax
	je	LBB4_3
## BB#5:
	movq	%rax, %rdi
	callq	_glfwMakeContextCurrent
	movq	_glewExperimental@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	callq	_glewInit
	testl	%eax, %eax
	je	LBB4_7
## BB#6:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str.9(%rip), %rdi
	movl	$26, %esi
	jmp	LBB4_4
LBB4_1:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str.6(%rip), %rdi
	movl	$26, %esi
	movl	$1, %edx
	callq	_fwrite
	callq	_getchar
	movl	$-1, %eax
	jmp	LBB4_11
LBB4_3:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str.8(%rip), %rdi
	movl	$121, %esi
LBB4_4:
	movl	$1, %edx
	callq	_fwrite
	callq	_getchar
	callq	_glfwTerminate
	movl	$-1, %eax
	jmp	LBB4_11
LBB4_7:
	movq	_window(%rip), %rdi
	movl	$208898, %esi           ## imm = 0x33002
	movl	$1, %edx
	callq	_glfwSetInputMode
	movss	LCPI4_0(%rip), %xmm2    ## xmm2 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	callq	_glClearColor
	movq	___glewGenVertexArrays@GOTPCREL(%rip), %rax
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	*(%rax)
	movq	___glewBindVertexArray@GOTPCREL(%rip), %rax
	movl	-44(%rbp), %edi
	callq	*(%rax)
	leaq	L_.str.10(%rip), %rdi
	leaq	L_.str.11(%rip), %rsi
	callq	__Z11LoadShadersPKcS0_
	movl	%eax, %ebx
	movq	___glewGenBuffers@GOTPCREL(%rip), %rax
	leaq	-48(%rbp), %rsi
	movl	$1, %edi
	callq	*(%rax)
	movq	___glewBindBuffer@GOTPCREL(%rip), %rax
	movl	-48(%rbp), %esi
	movl	$34962, %edi            ## imm = 0x8892
	callq	*(%rax)
	movq	___glewBufferData@GOTPCREL(%rip), %rax
	leaq	__ZZ4mainE20g_vertex_buffer_data(%rip), %rdx
	movl	$34962, %edi            ## imm = 0x8892
	movl	$36, %esi
	movl	$35044, %ecx            ## imm = 0x88E4
	callq	*(%rax)
	movq	___glewUseProgram@GOTPCREL(%rip), %r15
	movq	___glewEnableVertexAttribArray@GOTPCREL(%rip), %r12
	movq	___glewVertexAttribPointer@GOTPCREL(%rip), %r13
	movq	___glewDisableVertexAttribArray@GOTPCREL(%rip), %r14
	.align	4, 0x90
LBB4_8:                                 ## =>This Inner Loop Header: Depth=1
	movl	$16384, %edi            ## imm = 0x4000
	callq	_glClear
	movl	%ebx, %edi
	callq	*(%r15)
	xorl	%edi, %edi
	callq	*(%r12)
	movl	-48(%rbp), %esi
	movl	$34962, %edi            ## imm = 0x8892
	movq	___glewBindBuffer@GOTPCREL(%rip), %rax
	callq	*(%rax)
	xorl	%edi, %edi
	movl	$3, %esi
	movl	$5126, %edx             ## imm = 0x1406
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	*(%r13)
	movl	$4, %edi
	xorl	%esi, %esi
	movl	$3, %edx
	callq	_glDrawArrays
	xorl	%edi, %edi
	callq	*(%r14)
	movq	_window(%rip), %rdi
	callq	_glfwSwapBuffers
	callq	_glfwPollEvents
	movq	_window(%rip), %rdi
	movl	$256, %esi              ## imm = 0x100
	callq	_glfwGetKey
	cmpl	$1, %eax
	je	LBB4_10
## BB#9:                                ##   in Loop: Header=BB4_8 Depth=1
	movq	_window(%rip), %rdi
	callq	_glfwWindowShouldClose
	testl	%eax, %eax
	je	LBB4_8
LBB4_10:
	movq	___glewDeleteBuffers@GOTPCREL(%rip), %rax
	leaq	-48(%rbp), %rsi
	movl	$1, %edi
	callq	*(%rax)
	movq	___glewDeleteVertexArrays@GOTPCREL(%rip), %rax
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	*(%rax)
	movq	___glewDeleteProgram@GOTPCREL(%rip), %rax
	movl	%ebx, %edi
	callq	*(%rax)
	callq	_glfwTerminate
	xorl	%eax, %eax
LBB4_11:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.align	4, 0x90
__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Ltmp298:
	.cfi_def_cfa_offset 16
Ltmp299:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp300:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp301:
	.cfi_offset %rbx, -40
Ltmp302:
	.cfi_offset %r14, -32
Ltmp303:
	.cfi_offset %r15, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	leaq	(%rdi,%rax), %rbx
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	424(%rdi,%rax), %r14
	addq	$64, %rcx
	movq	%rcx, 424(%rdi,%rax)
	leaq	16(%rdi,%rax), %rdi
Ltmp286:
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp287:
## BB#1:
Ltmp292:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp293:
## BB#2:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
LBB5_3:
Ltmp288:
	movq	%rax, %r15
Ltmp289:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp290:
	jmp	LBB5_5
LBB5_8:
Ltmp291:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_4:
Ltmp294:
	movq	%rax, %r15
LBB5_5:
Ltmp295:
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp296:
## BB#6:
	movq	%r15, %rdi
	callq	__Unwind_Resume
LBB5_7:
Ltmp297:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table5:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\326\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset224 = Ltmp286-Lfunc_begin3          ## >> Call Site 1 <<
	.long	Lset224
Lset225 = Ltmp287-Ltmp286               ##   Call between Ltmp286 and Ltmp287
	.long	Lset225
Lset226 = Ltmp288-Lfunc_begin3          ##     jumps to Ltmp288
	.long	Lset226
	.byte	0                       ##   On action: cleanup
Lset227 = Ltmp292-Lfunc_begin3          ## >> Call Site 2 <<
	.long	Lset227
Lset228 = Ltmp293-Ltmp292               ##   Call between Ltmp292 and Ltmp293
	.long	Lset228
Lset229 = Ltmp294-Lfunc_begin3          ##     jumps to Ltmp294
	.long	Lset229
	.byte	0                       ##   On action: cleanup
Lset230 = Ltmp293-Lfunc_begin3          ## >> Call Site 3 <<
	.long	Lset230
Lset231 = Ltmp289-Ltmp293               ##   Call between Ltmp293 and Ltmp289
	.long	Lset231
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset232 = Ltmp289-Lfunc_begin3          ## >> Call Site 4 <<
	.long	Lset232
Lset233 = Ltmp290-Ltmp289               ##   Call between Ltmp289 and Ltmp290
	.long	Lset233
Lset234 = Ltmp291-Lfunc_begin3          ##     jumps to Ltmp291
	.long	Lset234
	.byte	1                       ##   On action: 1
Lset235 = Ltmp295-Lfunc_begin3          ## >> Call Site 5 <<
	.long	Lset235
Lset236 = Ltmp296-Ltmp295               ##   Call between Ltmp295 and Ltmp296
	.long	Lset236
Lset237 = Ltmp297-Lfunc_begin3          ##     jumps to Ltmp297
	.long	Lset237
	.byte	1                       ##   On action: 1
Lset238 = Ltmp296-Lfunc_begin3          ## >> Call Site 6 <<
	.long	Lset238
Lset239 = Lfunc_end3-Ltmp296            ##   Call between Ltmp296 and Lfunc_end3
	.long	Lset239
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.align	4, 0x90
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## BB#0:
	pushq	%rbp
Ltmp307:
	.cfi_def_cfa_offset 16
Ltmp308:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp309:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp310:
	.cfi_offset %rbx, -32
Ltmp311:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
Ltmp304:
	callq	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Ltmp305:
## BB#1:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB6_2:
Ltmp306:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table6:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\234"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset240 = Ltmp304-Lfunc_begin4          ## >> Call Site 1 <<
	.long	Lset240
Lset241 = Ltmp305-Ltmp304               ##   Call between Ltmp304 and Ltmp305
	.long	Lset241
Lset242 = Ltmp306-Lfunc_begin4          ##     jumps to Ltmp306
	.long	Lset242
	.byte	0                       ##   On action: cleanup
Lset243 = Ltmp305-Lfunc_begin4          ## >> Call Site 2 <<
	.long	Lset243
Lset244 = Lfunc_end4-Ltmp305            ##   Call between Ltmp305 and Lfunc_end4
	.long	Lset244
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.align	4, 0x90
__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## BB#0:
	pushq	%rbp
Ltmp327:
	.cfi_def_cfa_offset 16
Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp329:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp330:
	.cfi_offset %rbx, -40
Ltmp331:
	.cfi_offset %r14, -32
Ltmp332:
	.cfi_offset %r15, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	leaq	(%rdi,%rax), %rbx
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	424(%rdi,%rax), %r14
	addq	$64, %rcx
	movq	%rcx, 424(%rdi,%rax)
	leaq	16(%rdi,%rax), %rdi
Ltmp312:
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp313:
## BB#1:
Ltmp318:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp319:
## BB#2:
Ltmp324:
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp325:
## BB#3:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB7_4:
Ltmp314:
	movq	%rax, %r15
Ltmp315:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
Ltmp316:
	jmp	LBB7_6
LBB7_10:
Ltmp317:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB7_5:
Ltmp320:
	movq	%rax, %r15
LBB7_6:
Ltmp321:
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp322:
	jmp	LBB7_8
LBB7_9:
Ltmp323:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB7_7:
Ltmp326:
	movq	%rax, %r15
LBB7_8:
	movq	%rbx, %rdi
	callq	__ZdlPv
	movq	%r15, %rdi
	callq	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table7:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\326\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset245 = Ltmp312-Lfunc_begin5          ## >> Call Site 1 <<
	.long	Lset245
Lset246 = Ltmp313-Ltmp312               ##   Call between Ltmp312 and Ltmp313
	.long	Lset246
Lset247 = Ltmp314-Lfunc_begin5          ##     jumps to Ltmp314
	.long	Lset247
	.byte	0                       ##   On action: cleanup
Lset248 = Ltmp318-Lfunc_begin5          ## >> Call Site 2 <<
	.long	Lset248
Lset249 = Ltmp319-Ltmp318               ##   Call between Ltmp318 and Ltmp319
	.long	Lset249
Lset250 = Ltmp320-Lfunc_begin5          ##     jumps to Ltmp320
	.long	Lset250
	.byte	0                       ##   On action: cleanup
Lset251 = Ltmp324-Lfunc_begin5          ## >> Call Site 3 <<
	.long	Lset251
Lset252 = Ltmp325-Ltmp324               ##   Call between Ltmp324 and Ltmp325
	.long	Lset252
Lset253 = Ltmp326-Lfunc_begin5          ##     jumps to Ltmp326
	.long	Lset253
	.byte	0                       ##   On action: cleanup
Lset254 = Ltmp315-Lfunc_begin5          ## >> Call Site 4 <<
	.long	Lset254
Lset255 = Ltmp316-Ltmp315               ##   Call between Ltmp315 and Ltmp316
	.long	Lset255
Lset256 = Ltmp317-Lfunc_begin5          ##     jumps to Ltmp317
	.long	Lset256
	.byte	1                       ##   On action: 1
Lset257 = Ltmp321-Lfunc_begin5          ## >> Call Site 5 <<
	.long	Lset257
Lset258 = Ltmp322-Ltmp321               ##   Call between Ltmp321 and Ltmp322
	.long	Lset258
Lset259 = Ltmp323-Lfunc_begin5          ##     jumps to Ltmp323
	.long	Lset259
	.byte	1                       ##   On action: 1
Lset260 = Ltmp322-Lfunc_begin5          ## >> Call Site 6 <<
	.long	Lset260
Lset261 = Lfunc_end5-Ltmp322            ##   Call between Ltmp322 and Lfunc_end5
	.long	Lset261
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp333:
	.cfi_def_cfa_offset 16
Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp335:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## BB#0:
	pushq	%rbp
Ltmp345:
	.cfi_def_cfa_offset 16
Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp347:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp348:
	.cfi_offset %rbx, -40
Ltmp349:
	.cfi_offset %r14, -32
Ltmp350:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	120(%rbx), %r14
	testq	%r14, %r14
	je	LBB9_5
## BB#1:
Ltmp336:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
Ltmp337:
## BB#2:
	movq	%r14, %rdi
	callq	_fclose
	testl	%eax, %eax
	jne	LBB9_5
## BB#3:
	movq	$0, 120(%rbx)
LBB9_5:
	movzwl	400(%rbx), %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	testb	%al, %al
	je	LBB9_8
## BB#6:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB9_8
## BB#7:
	callq	__ZdaPv
	movb	401(%rbx), %cl
LBB9_8:
	testb	%cl, %cl
	je	LBB9_11
## BB#9:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB9_11
## BB#10:
	callq	__ZdaPv
LBB9_11:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
LBB9_4:
Ltmp338:
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_fclose
	movq	%r15, %rdi
	callq	___cxa_begin_catch
Ltmp339:
	callq	___cxa_end_catch
Ltmp340:
	jmp	LBB9_5
LBB9_12:
Ltmp341:
	movq	%rax, %r14
Ltmp342:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Ltmp343:
## BB#13:
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB9_14:
Ltmp344:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table9:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset262 = Ltmp336-Lfunc_begin6          ## >> Call Site 1 <<
	.long	Lset262
Lset263 = Ltmp337-Ltmp336               ##   Call between Ltmp336 and Ltmp337
	.long	Lset263
Lset264 = Ltmp338-Lfunc_begin6          ##     jumps to Ltmp338
	.long	Lset264
	.byte	1                       ##   On action: 1
Lset265 = Ltmp337-Lfunc_begin6          ## >> Call Site 2 <<
	.long	Lset265
Lset266 = Ltmp339-Ltmp337               ##   Call between Ltmp337 and Ltmp339
	.long	Lset266
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset267 = Ltmp339-Lfunc_begin6          ## >> Call Site 3 <<
	.long	Lset267
Lset268 = Ltmp340-Ltmp339               ##   Call between Ltmp339 and Ltmp340
	.long	Lset268
Lset269 = Ltmp341-Lfunc_begin6          ##     jumps to Ltmp341
	.long	Lset269
	.byte	0                       ##   On action: cleanup
Lset270 = Ltmp342-Lfunc_begin6          ## >> Call Site 4 <<
	.long	Lset270
Lset271 = Ltmp343-Ltmp342               ##   Call between Ltmp342 and Ltmp343
	.long	Lset271
Lset272 = Ltmp344-Lfunc_begin6          ##     jumps to Ltmp344
	.long	Lset272
	.byte	1                       ##   On action: 1
Lset273 = Ltmp343-Lfunc_begin6          ## >> Call Site 5 <<
	.long	Lset273
Lset274 = Lfunc_end6-Ltmp343            ##   Call between Ltmp343 and Lfunc_end6
	.long	Lset274
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## BB#0:
	pushq	%rbp
Ltmp354:
	.cfi_def_cfa_offset 16
Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp356:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp357:
	.cfi_offset %rbx, -32
Ltmp358:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
Ltmp351:
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Ltmp352:
## BB#1:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB10_2:
Ltmp353:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table10:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\234"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset275 = Ltmp351-Lfunc_begin7          ## >> Call Site 1 <<
	.long	Lset275
Lset276 = Ltmp352-Ltmp351               ##   Call between Ltmp351 and Ltmp352
	.long	Lset276
Lset277 = Ltmp353-Lfunc_begin7          ##     jumps to Ltmp353
	.long	Lset277
	.byte	0                       ##   On action: cleanup
Lset278 = Ltmp352-Lfunc_begin7          ## >> Call Site 2 <<
	.long	Lset278
Lset279 = Lfunc_end7-Ltmp352            ##   Call between Ltmp352 and Lfunc_end7
	.long	Lset279
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp359:
	.cfi_def_cfa_offset 16
Ltmp360:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp361:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp362:
	.cfi_offset %rbx, -32
Ltmp363:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	callq	*48(%rax)
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	movq	%rax, 128(%rbx)
	movq	(%rax), %rcx
	movzbl	402(%rbx), %r14d
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, 402(%rbx)
	movzbl	%al, %ecx
	cmpl	%ecx, %r14d
	je	LBB11_10
## BB#1:
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movzwl	400(%rbx), %ecx
	testb	%al, %al
	je	LBB11_6
## BB#2:
	movl	%ecx, %eax
	shrl	$8, %eax
	testb	%cl, %cl
	je	LBB11_5
## BB#3:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB11_5
## BB#4:
	callq	__ZdaPv
	movb	401(%rbx), %al
LBB11_5:
	movb	%al, 400(%rbx)
	movq	112(%rbx), %rax
	movq	%rax, 96(%rbx)
	movq	104(%rbx), %rax
	movq	%rax, 64(%rbx)
	movb	$0, 401(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	jmp	LBB11_10
LBB11_6:
	testb	%cl, %cl
	jne	LBB11_9
## BB#7:
	movq	64(%rbx), %rax
	leaq	88(%rbx), %rcx
	cmpq	%rcx, %rax
	je	LBB11_9
## BB#8:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	movq	%rax, 104(%rbx)
	movb	$0, 401(%rbx)
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
	jmp	LBB11_10
LBB11_9:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
LBB11_10:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp364:
	.cfi_def_cfa_offset 16
Ltmp365:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp366:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp367:
	.cfi_offset %rbx, -48
Ltmp368:
	.cfi_offset %r12, -40
Ltmp369:
	.cfi_offset %r14, -32
Ltmp370:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movl	400(%rbx), %ecx
	movl	%ecx, %eax
	shrl	$8, %eax
	testb	%cl, %cl
	je	LBB12_3
## BB#1:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB12_3
## BB#2:
	callq	__ZdaPv
	movb	401(%rbx), %al
LBB12_3:
	testb	%al, %al
	je	LBB12_6
## BB#4:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB12_6
## BB#5:
	callq	__ZdaPv
LBB12_6:
	movq	%r15, 96(%rbx)
	cmpq	$9, %r15
	jb	LBB12_11
## BB#7:
	movb	402(%rbx), %r12b
	testq	%r14, %r14
	je	LBB12_10
## BB#8:
	testb	%r12b, %r12b
	je	LBB12_10
## BB#9:
	movq	%r14, 64(%rbx)
	movb	$0, 400(%rbx)
	jmp	LBB12_12
LBB12_11:
	leaq	88(%rbx), %rax
	movq	%rax, 64(%rbx)
	movq	$8, 96(%rbx)
	movb	$0, 400(%rbx)
	movb	402(%rbx), %r12b
	jmp	LBB12_12
LBB12_10:
	movq	%r15, %rdi
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
LBB12_12:
	testb	%r12b, %r12b
	je	LBB12_13
## BB#17:
	movb	$0, 401(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	jmp	LBB12_18
LBB12_13:
	cmpq	$8, %r15
	movl	$8, %edi
	cmovgeq	%r15, %rdi
	movq	%rdi, 112(%rbx)
	testq	%r14, %r14
	je	LBB12_16
## BB#14:
	cmpq	$8, %rdi
	jb	LBB12_16
## BB#15:
	movq	%r14, 104(%rbx)
	movb	$0, 401(%rbx)
	jmp	LBB12_18
LBB12_16:
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
LBB12_18:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp371:
	.cfi_def_cfa_offset 16
Ltmp372:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp373:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp374:
	.cfi_offset %rbx, -56
Ltmp375:
	.cfi_offset %r12, -48
Ltmp376:
	.cfi_offset %r13, -40
Ltmp377:
	.cfi_offset %r14, -32
Ltmp378:
	.cfi_offset %r15, -24
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	128(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB13_10
## BB#1:
	movq	(%rdi), %rax
	callq	*48(%rax)
	movl	%eax, %r13d
	cmpq	$0, 120(%r14)
	je	LBB13_5
## BB#2:
	testq	%r12, %r12
	je	LBB13_4
## BB#3:
	testl	%r13d, %r13d
	jle	LBB13_5
LBB13_4:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB13_5
## BB#6:
	cmpl	$3, %r15d
	jae	LBB13_5
## BB#7:
	movq	120(%r14), %rdi
	movslq	%r13d, %rax
	imulq	%rax, %r12
	xorl	%esi, %esi
	testl	%eax, %eax
	cmovgq	%r12, %rsi
	movl	%r15d, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB13_8
LBB13_5:
	movq	$0, 120(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	movq	$0, 96(%rbx)
	movq	$0, 88(%rbx)
	movq	$0, 80(%rbx)
	movq	$0, 72(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 8(%rbx)
	movq	$0, (%rbx)
	movq	$-1, 128(%rbx)
LBB13_9:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB13_8:
	movq	120(%r14), %rdi
	callq	_ftello
	addq	$136, %r14
	movl	$16, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	rep;movsq
	movq	%rax, 128(%rbx)
	jmp	LBB13_9
LBB13_10:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp379:
	.cfi_def_cfa_offset 16
Ltmp380:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp381:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp382:
	.cfi_offset %rbx, -40
Ltmp383:
	.cfi_offset %r14, -32
Ltmp384:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 120(%r14)
	je	LBB14_2
## BB#1:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB14_2
## BB#3:
	leaq	16(%rbp), %r15
	movq	120(%r14), %rdi
	movq	128(%r15), %rsi
	xorl	%edx, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB14_4
LBB14_2:
	movq	$0, 120(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	movq	$0, 96(%rbx)
	movq	$0, 88(%rbx)
	movq	$0, 80(%rbx)
	movq	$0, 72(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 8(%rbx)
	movq	$0, (%rbx)
	movq	$-1, 128(%rbx)
LBB14_5:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB14_4:
	addq	$136, %r14
	movl	$16, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	rep;movsq
	movl	$136, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_memcpy
	jmp	LBB14_5
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp385:
	.cfi_def_cfa_offset 16
Ltmp386:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp387:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
Ltmp388:
	.cfi_offset %rbx, -56
Ltmp389:
	.cfi_offset %r12, -48
Ltmp390:
	.cfi_offset %r13, -40
Ltmp391:
	.cfi_offset %r14, -32
Ltmp392:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, -48(%rbp)
	xorl	%r13d, %r13d
	cmpq	$0, 120(%r15)
	je	LBB15_26
## BB#1:
	movq	128(%r15), %rax
	testq	%rax, %rax
	je	LBB15_28
## BB#2:
	movl	396(%r15), %ecx
	testb	$16, %cl
	jne	LBB15_3
## BB#11:
	testb	$8, %cl
	je	LBB15_25
## BB#12:
	leaq	264(%r15), %rsi
	leaq	-176(%rbp), %rdi
	movl	$16, %ecx
	rep;movsq
	cmpb	$0, 402(%r15)
	je	LBB15_14
## BB#13:
	movq	32(%r15), %r14
	subq	24(%r15), %r14
	xorl	%r12d, %r12d
	jmp	LBB15_19
LBB15_3:
	movq	48(%r15), %rax
	cmpq	40(%r15), %rax
	je	LBB15_5
## BB#4:
	movq	(%r15), %rax
	movl	$-1, %r13d
	movl	$-1, %esi
	movq	%r15, %rdi
	callq	*104(%rax)
	cmpl	$-1, %eax
	je	LBB15_26
LBB15_5:
	leaq	136(%r15), %r14
	movl	$-1, %r13d
	.align	4, 0x90
LBB15_6:                                ## =>This Inner Loop Header: Depth=1
	movq	64(%r15), %rdx
	movq	128(%r15), %rdi
	movq	96(%r15), %rcx
	addq	%rdx, %rcx
	movq	(%rdi), %rax
	movq	%r14, %rsi
	leaq	-176(%rbp), %r8
	callq	*40(%rax)
	movl	%eax, %ebx
	movq	-176(%rbp), %r12
	movq	64(%r15), %rdi
	movq	120(%r15), %rcx
	subq	%rdi, %r12
	movl	$1, %esi
	movq	%r12, %rdx
	callq	_fwrite
	cmpq	%r12, %rax
	jne	LBB15_7
## BB#8:                                ##   in Loop: Header=BB15_6 Depth=1
	cmpl	$1, %ebx
	je	LBB15_6
## BB#9:
	cmpl	$2, %ebx
	jne	LBB15_24
## BB#10:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	jmp	LBB15_26
LBB15_7:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	jmp	LBB15_26
LBB15_24:
	movq	120(%r15), %rdi
	callq	_fflush
	testl	%eax, %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	jne	LBB15_26
	jmp	LBB15_25
LBB15_14:
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*48(%rcx)
	movq	72(%r15), %rcx
	movq	80(%r15), %r14
	subq	%rcx, %r14
	testl	%eax, %eax
	jle	LBB15_16
## BB#15:
	cltq
	movq	32(%r15), %rcx
	subq	24(%r15), %rcx
	imulq	%rax, %rcx
	addq	%rcx, %r14
	xorl	%r12d, %r12d
	jmp	LBB15_19
LBB15_16:
	movq	24(%r15), %r8
	cmpq	32(%r15), %r8
	je	LBB15_17
## BB#18:
	movq	64(%r15), %rdx
	movq	128(%r15), %rdi
	subq	16(%r15), %r8
	movq	(%rdi), %rax
	leaq	-176(%rbp), %rsi
	callq	*64(%rax)
	cltq
	addq	72(%r15), %r14
	subq	%rax, %r14
	subq	64(%r15), %r14
	movb	$1, %r12b
	jmp	LBB15_19
LBB15_17:
	xorl	%r12d, %r12d
LBB15_19:
	movq	120(%r15), %rdi
	negq	%r14
	movl	$1, %edx
	movq	%r14, %rsi
	callq	_fseeko
	testl	%eax, %eax
	je	LBB15_20
## BB#23:
	movl	$-1, %r13d
	jmp	LBB15_26
LBB15_20:
	testb	%r12b, %r12b
	je	LBB15_22
## BB#21:
	leaq	136(%r15), %rdi
	leaq	-176(%rbp), %rsi
	movl	$16, %ecx
	rep;movsq
LBB15_22:
	movq	64(%r15), %rax
	movq	%rax, 80(%r15)
	movq	%rax, 72(%r15)
	movl	$0, 396(%r15)
	movq	$0, 32(%r15)
	movq	$0, 24(%r15)
	movq	$0, 16(%r15)
LBB15_25:
	xorl	%r13d, %r13d
LBB15_26:
	cmpq	-48(%rbp), %rbx
	jne	LBB15_29
## BB#27:
	movl	%r13d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB15_29:
	callq	___stack_chk_fail
LBB15_28:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp393:
	.cfi_def_cfa_offset 16
Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp395:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp396:
	.cfi_offset %rbx, -56
Ltmp397:
	.cfi_offset %r12, -48
Ltmp398:
	.cfi_offset %r13, -40
Ltmp399:
	.cfi_offset %r14, -32
Ltmp400:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$-1, %eax
	cmpq	$0, 120(%rbx)
	je	LBB16_27
## BB#1:
	testb	$8, 396(%rbx)
	jne	LBB16_2
## BB#3:
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	cmpb	$0, 402(%rbx)
	je	LBB16_5
## BB#4:
	movq	64(%rbx), %rax
	movq	96(%rbx), %rsi
	jmp	LBB16_6
LBB16_2:
	leaq	24(%rbx), %r13
	movq	24(%rbx), %rsi
	xorl	%eax, %eax
	jmp	LBB16_7
LBB16_5:
	movq	104(%rbx), %rax
	movq	112(%rbx), %rsi
LBB16_6:
	addq	%rax, %rsi
	movq	%rax, 16(%rbx)
	leaq	24(%rbx), %r13
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
	movl	$8, 396(%rbx)
	movb	$1, %al
LBB16_7:
	testq	%rsi, %rsi
	jne	LBB16_9
## BB#8:
	leaq	-40(%rbp), %rsi
	leaq	-41(%rbp), %rcx
	movq	%rcx, 16(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
LBB16_9:
	testb	%al, %al
	je	LBB16_11
## BB#10:
	movq	32(%rbx), %rax
	xorl	%r14d, %r14d
	jmp	LBB16_12
LBB16_11:
	movq	32(%rbx), %rax
	movq	%rax, %rcx
	subq	16(%rbx), %rcx
	movq	%rcx, %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	sarq	%rdx
	cmpq	$4, %rdx
	movl	$4, %r14d
	cmovbeq	%rdx, %r14
LBB16_12:
	cmpq	%rax, %rsi
	je	LBB16_13
## BB#24:
	movzbl	(%rsi), %eax
	leaq	16(%rbx), %r12
	jmp	LBB16_25
LBB16_13:
	leaq	16(%rbx), %r12
	movq	16(%rbx), %rdi
	subq	%r14, %rsi
	movq	%r14, %rdx
	callq	_memmove
	cmpb	$0, 402(%rbx)
	je	LBB16_16
## BB#14:
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rdx
	subq	%r14, %rdx
	subq	%rdi, %rdx
	addq	%r14, %rdi
	movq	120(%rbx), %rcx
	movl	$1, %esi
	callq	_fread
	movq	%rax, %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	LBB16_25
## BB#15:
	movq	16(%rbx), %rax
	leaq	(%rax,%r14), %rdx
	addq	%rdx, %rcx
	movq	%rdx, 24(%rbx)
	movq	%rcx, 32(%rbx)
	movzbl	(%rax,%r14), %eax
	jmp	LBB16_25
LBB16_16:
	movq	64(%rbx), %rdi
	movq	72(%rbx), %rsi
	movq	80(%rbx), %rdx
	subq	%rsi, %rdx
	callq	_memmove
	movq	64(%rbx), %rdx
	movq	80(%rbx), %rax
	subq	72(%rbx), %rax
	addq	%rdx, %rax
	movq	%rax, 72(%rbx)
	leaq	88(%rbx), %rsi
	movl	$8, %ecx
	cmpq	%rsi, %rdx
	je	LBB16_18
## BB#17:
	movq	96(%rbx), %rcx
LBB16_18:
	addq	%rcx, %rdx
	movq	%rdx, 80(%rbx)
	movq	112(%rbx), %rcx
	subq	%r14, %rcx
	subq	%rax, %rdx
	cmpq	%rcx, %rdx
	cmovaeq	%rcx, %rdx
	leaq	264(%rbx), %rdi
	leaq	136(%rbx), %r15
	movl	$16, %ecx
	movq	%r15, %rsi
	rep;movsq
	movq	120(%rbx), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	_fread
	movq	%rax, %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	LBB16_25
## BB#19:
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB16_28
## BB#20:
	leaq	72(%rbx), %r8
	addq	72(%rbx), %rcx
	movq	%rcx, 80(%rbx)
	movq	16(%rbx), %rax
	movq	64(%rbx), %rdx
	leaq	(%rax,%r14), %r9
	addq	112(%rbx), %rax
	movq	(%rdi), %r10
	leaq	-56(%rbp), %rsi
	movq	%rsi, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r15, %rsi
	callq	*32(%r10)
	cmpl	$3, %eax
	jne	LBB16_22
## BB#21:
	movq	64(%rbx), %rax
	movq	80(%rbx), %rcx
	movq	%rax, 16(%rbx)
	movq	%rax, (%r13)
	movq	%rcx, 32(%rbx)
	movzbl	(%rax), %eax
	jmp	LBB16_25
LBB16_22:
	movq	-56(%rbp), %rcx
	addq	(%r12), %r14
	movl	$-1, %eax
	cmpq	%r14, %rcx
	je	LBB16_25
## BB#23:
	movq	%r14, 24(%rbx)
	movq	%rcx, 32(%rbx)
	movzbl	(%r14), %eax
LBB16_25:
	leaq	-41(%rbp), %rcx
	cmpq	%rcx, (%r12)
	jne	LBB16_27
## BB#26:
	movq	$0, (%r12)
	movq	$0, 24(%rbx)
	movq	$0, 32(%rbx)
LBB16_27:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB16_28:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp401:
	.cfi_def_cfa_offset 16
Ltmp402:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp403:
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	cmpq	$0, 120(%rdi)
	je	LBB17_7
## BB#1:
	movq	24(%rdi), %rcx
	cmpq	%rcx, 16(%rdi)
	jae	LBB17_7
## BB#2:
	cmpl	$-1, %esi
	je	LBB17_3
## BB#4:
	testb	$16, 392(%rdi)
	jne	LBB17_6
## BB#5:
	movzbl	-1(%rcx), %r8d
	movzbl	%sil, %edx
	cmpl	%r8d, %edx
	jne	LBB17_7
LBB17_6:
	decq	%rcx
	movq	%rcx, 24(%rdi)
	movb	%sil, (%rcx)
	movl	%esi, %eax
LBB17_7:
	popq	%rbp
	retq
LBB17_3:
	decq	%rcx
	movq	%rcx, 24(%rdi)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp404:
	.cfi_def_cfa_offset 16
Ltmp405:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp406:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp407:
	.cfi_offset %rbx, -56
Ltmp408:
	.cfi_offset %r12, -48
Ltmp409:
	.cfi_offset %r13, -40
Ltmp410:
	.cfi_offset %r14, -32
Ltmp411:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %r12
	movl	$-1, %eax
	cmpq	$0, 120(%r12)
	je	LBB18_31
## BB#1:
	testb	$16, 396(%r12)
	jne	LBB18_2
## BB#3:
	movq	$0, 32(%r12)
	movq	$0, 24(%r12)
	movq	$0, 16(%r12)
	movq	96(%r12), %rcx
	cmpq	$9, %rcx
	jb	LBB18_8
## BB#4:
	cmpb	$0, 402(%r12)
	je	LBB18_7
## BB#5:
	movq	64(%r12), %rax
	jmp	LBB18_6
LBB18_2:
	leaq	40(%r12), %r15
	movq	40(%r12), %rax
	movq	56(%r12), %r13
	leaq	56(%r12), %rdx
	movq	%rax, %rsi
	jmp	LBB18_10
LBB18_8:
	leaq	40(%r12), %r15
	movq	$0, 56(%r12)
	movq	$0, 48(%r12)
	movq	$0, 40(%r12)
	leaq	56(%r12), %rdx
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	LBB18_9
LBB18_7:
	movq	104(%r12), %rax
	movq	112(%r12), %rcx
LBB18_6:
	leaq	-1(%rcx,%rax), %r13
	movq	%rax, 48(%r12)
	leaq	40(%r12), %r15
	movq	%rax, 40(%r12)
	leaq	56(%r12), %rdx
	movq	%r13, 56(%r12)
	movq	%rax, %rsi
LBB18_9:
	movl	$16, 396(%r12)
LBB18_10:
	cmpl	$-1, %r14d
	movq	48(%r12), %rcx
	je	LBB18_14
## BB#11:
	testq	%rcx, %rcx
	jne	LBB18_13
## BB#12:
	leaq	-40(%rbp), %rax
	leaq	-41(%rbp), %rcx
	movq	%rcx, 48(%r12)
	movq	%rcx, 40(%r12)
	movq	%rax, 56(%r12)
LBB18_13:
	movb	%r14b, (%rcx)
	movq	48(%r12), %rcx
	incq	%rcx
	movq	%rcx, 48(%r12)
	movq	40(%r12), %rax
LBB18_14:
	movq	%rcx, %rbx
	subq	%rax, %rbx
	je	LBB18_18
## BB#15:
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, -80(%rbp)         ## 8-byte Spill
	cmpb	$0, 402(%r12)
	je	LBB18_19
## BB#16:
	movq	120(%r12), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	_fwrite
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	jne	LBB18_31
	jmp	LBB18_17
LBB18_19:
	movq	%r13, -96(%rbp)         ## 8-byte Spill
	movq	%r15, -72(%rbp)         ## 8-byte Spill
	movq	64(%r12), %r9
	movq	%r9, -56(%rbp)
	movq	128(%r12), %rdi
	testq	%rdi, %rdi
	je	LBB18_32
## BB#20:
	leaq	136(%r12), %r15
	movq	96(%r12), %rdx
	addq	%r9, %rdx
	movq	(%rdi), %rbx
	leaq	-56(%rbp), %rsi
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	leaq	-64(%rbp), %r8
	movq	%r15, %rsi
	movq	%rax, %rdx
	jmp	LBB18_21
	.align	4, 0x90
LBB18_29:                               ##   in Loop: Header=BB18_21 Depth=1
	movq	64(%r12), %r9
	movq	96(%r12), %rax
	addq	%r9, %rax
	movq	(%rdi), %rbx
	leaq	-56(%rbp), %rsi
	movq	%rsi, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r15, %rsi
	leaq	-64(%rbp), %r8
LBB18_21:                               ## =>This Inner Loop Header: Depth=1
	callq	*24(%rbx)
	movl	%eax, %r13d
	movq	40(%r12), %rdi
	cmpq	%rdi, -64(%rbp)
	je	LBB18_30
## BB#22:                               ##   in Loop: Header=BB18_21 Depth=1
	cmpl	$3, %r13d
	je	LBB18_23
## BB#25:                               ##   in Loop: Header=BB18_21 Depth=1
	movl	%r13d, %eax
	orl	$1, %eax
	cmpl	$1, %eax
	jne	LBB18_30
## BB#26:                               ##   in Loop: Header=BB18_21 Depth=1
	movq	-56(%rbp), %rbx
	movq	64(%r12), %rdi
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB18_30
## BB#27:                               ##   in Loop: Header=BB18_21 Depth=1
	cmpl	$1, %r13d
	jne	LBB18_24
## BB#28:                               ##   in Loop: Header=BB18_21 Depth=1
	movq	-64(%rbp), %rdx
	movq	48(%r12), %rax
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rax, 56(%r12)
	subl	%edx, %eax
	movslq	%eax, %rcx
	addq	%rdx, %rcx
	movq	%rcx, 48(%r12)
	movq	128(%r12), %rdi
	testq	%rdi, %rdi
	jne	LBB18_29
LBB18_32:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB18_23:
	movq	48(%r12), %rbx
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB18_30
LBB18_24:
	movq	-72(%rbp), %r15         ## 8-byte Reload
	movq	-96(%rbp), %r13         ## 8-byte Reload
LBB18_17:
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, 48(%r12)
	movq	%rax, (%r15)
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	%r13, (%rax)
LBB18_18:
	xorl	%eax, %eax
	cmpl	$-1, %r14d
	cmovnel	%r14d, %eax
	jmp	LBB18_31
LBB18_30:
	movl	$-1, %eax
LBB18_31:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
## BB#0:
	pushq	%rbp
Ltmp430:
	.cfi_def_cfa_offset 16
Ltmp431:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp432:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp433:
	.cfi_offset %rbx, -40
Ltmp434:
	.cfi_offset %r14, -32
Ltmp435:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	leaq	96(%rbx), %rdi
	leaq	8(%rbx), %r14
	movq	$0, 80(%rbx)
	movq	$0, 72(%rbx)
	movq	$0, 64(%rbx)
	movl	$307, %esi              ## imm = 0x133
	callq	___bzero
	leaq	-32(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
Ltmp412:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9has_facetERNS0_2idE
	movb	%al, %r15b
Ltmp413:
## BB#1:
Ltmp415:
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp416:
## BB#2:
	testb	%r15b, %r15b
	je	LBB19_6
## BB#3:
	leaq	-40(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
Ltmp417:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp418:
## BB#4:
	movq	%rax, 128(%rbx)
Ltmp422:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp423:
## BB#5:
	movq	128(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*56(%rax)
	movb	%al, 402(%rbx)
LBB19_6:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
Ltmp424:
	xorl	%esi, %esi
	movl	$4096, %edx             ## imm = 0x1000
	movq	%rbx, %rdi
	callq	*%rax
Ltmp425:
## BB#7:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB19_9:
Ltmp426:
	movq	%rax, %r14
LBB19_10:
Ltmp427:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Ltmp428:
## BB#11:
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB19_13:
Ltmp414:
	movq	%rax, %rdi
	callq	___cxa_call_unexpected
LBB19_8:
Ltmp419:
	movq	%rax, %r14
Ltmp420:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp421:
	jmp	LBB19_10
LBB19_12:
Ltmp429:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table19:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\215\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset280 = Lfunc_begin8-Lfunc_begin8     ## >> Call Site 1 <<
	.long	Lset280
Lset281 = Ltmp412-Lfunc_begin8          ##   Call between Lfunc_begin8 and Ltmp412
	.long	Lset281
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset282 = Ltmp412-Lfunc_begin8          ## >> Call Site 2 <<
	.long	Lset282
Lset283 = Ltmp413-Ltmp412               ##   Call between Ltmp412 and Ltmp413
	.long	Lset283
Lset284 = Ltmp414-Lfunc_begin8          ##     jumps to Ltmp414
	.long	Lset284
	.byte	1                       ##   On action: 1
Lset285 = Ltmp415-Lfunc_begin8          ## >> Call Site 3 <<
	.long	Lset285
Lset286 = Ltmp416-Ltmp415               ##   Call between Ltmp415 and Ltmp416
	.long	Lset286
Lset287 = Ltmp426-Lfunc_begin8          ##     jumps to Ltmp426
	.long	Lset287
	.byte	0                       ##   On action: cleanup
Lset288 = Ltmp417-Lfunc_begin8          ## >> Call Site 4 <<
	.long	Lset288
Lset289 = Ltmp418-Ltmp417               ##   Call between Ltmp417 and Ltmp418
	.long	Lset289
Lset290 = Ltmp419-Lfunc_begin8          ##     jumps to Ltmp419
	.long	Lset290
	.byte	0                       ##   On action: cleanup
Lset291 = Ltmp422-Lfunc_begin8          ## >> Call Site 5 <<
	.long	Lset291
Lset292 = Ltmp423-Ltmp422               ##   Call between Ltmp422 and Ltmp423
	.long	Lset292
Lset293 = Ltmp426-Lfunc_begin8          ##     jumps to Ltmp426
	.long	Lset293
	.byte	0                       ##   On action: cleanup
Lset294 = Ltmp423-Lfunc_begin8          ## >> Call Site 6 <<
	.long	Lset294
Lset295 = Ltmp424-Ltmp423               ##   Call between Ltmp423 and Ltmp424
	.long	Lset295
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset296 = Ltmp424-Lfunc_begin8          ## >> Call Site 7 <<
	.long	Lset296
Lset297 = Ltmp425-Ltmp424               ##   Call between Ltmp424 and Ltmp425
	.long	Lset297
Lset298 = Ltmp426-Lfunc_begin8          ##     jumps to Ltmp426
	.long	Lset298
	.byte	0                       ##   On action: cleanup
Lset299 = Ltmp427-Lfunc_begin8          ## >> Call Site 8 <<
	.long	Lset299
Lset300 = Ltmp428-Ltmp427               ##   Call between Ltmp427 and Ltmp428
	.long	Lset300
Lset301 = Ltmp429-Lfunc_begin8          ##     jumps to Ltmp429
	.long	Lset301
	.byte	3                       ##   On action: 2
Lset302 = Ltmp428-Lfunc_begin8          ## >> Call Site 9 <<
	.long	Lset302
Lset303 = Ltmp420-Ltmp428               ##   Call between Ltmp428 and Ltmp420
	.long	Lset303
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset304 = Ltmp420-Lfunc_begin8          ## >> Call Site 10 <<
	.long	Lset304
Lset305 = Ltmp421-Ltmp420               ##   Call between Ltmp420 and Ltmp421
	.long	Lset305
Lset306 = Ltmp429-Lfunc_begin8          ##     jumps to Ltmp429
	.long	Lset306
	.byte	3                       ##   On action: 2
	.byte	127                     ## >> Action Record 1 <<
                                        ##   Filter TypeInfo -1
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
                                        ## >> Filter TypeInfos <<
	.byte	0
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_def_can_be_hidden	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.align	4, 0x90
__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ## @_ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
## BB#0:
	pushq	%rbp
Ltmp454:
	.cfi_def_cfa_offset 16
Ltmp455:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp456:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Ltmp457:
	.cfi_offset %rbx, -48
Ltmp458:
	.cfi_offset %r12, -40
Ltmp459:
	.cfi_offset %r14, -32
Ltmp460:
	.cfi_offset %r15, -24
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r14
Ltmp436:
	leaq	-40(%rbp), %rdi
	movl	$1, %edx
	movq	%r14, %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
Ltmp437:
## BB#1:
	cmpb	$0, -40(%rbp)
	je	LBB20_21
## BB#2:
	testb	$1, (%rbx)
	jne	LBB20_3
## BB#4:
	movw	$0, (%rbx)
	jmp	LBB20_5
LBB20_3:
	movq	16(%rbx), %rax
	movb	$0, (%rax)
	movq	$0, 8(%rbx)
LBB20_5:
	xorl	%eax, %eax
	movzbl	%r15b, %r12d
	.align	4, 0x90
LBB20_6:                                ## =>This Inner Loop Header: Depth=1
	movq	%rax, %r15
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	40(%r14,%rax), %rdi
	movq	24(%rdi), %rax
	cmpq	32(%rdi), %rax
	je	LBB20_7
## BB#10:                               ##   in Loop: Header=BB20_6 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movzbl	(%rax), %eax
	jmp	LBB20_11
	.align	4, 0x90
LBB20_7:                                ##   in Loop: Header=BB20_6 Depth=1
	movq	(%rdi), %rax
	movq	80(%rax), %rax
Ltmp439:
	callq	*%rax
Ltmp440:
## BB#8:                                ##   in Loop: Header=BB20_6 Depth=1
	movl	$2, %ecx
	cmpl	$-1, %eax
	je	LBB20_16
LBB20_11:                               ##   in Loop: Header=BB20_6 Depth=1
	movzbl	%al, %edx
	xorl	%ecx, %ecx
	cmpl	%r12d, %edx
	je	LBB20_15
## BB#12:                               ##   in Loop: Header=BB20_6 Depth=1
Ltmp442:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp443:
## BB#13:                               ##   in Loop: Header=BB20_6 Depth=1
	leaq	1(%r15), %rax
	testb	$1, (%rbx)
	je	LBB20_6
## BB#14:                               ##   in Loop: Header=BB20_6 Depth=1
	movl	$4, %ecx
	cmpq	$-17, 8(%rbx)
	jne	LBB20_6
LBB20_15:
	incq	%r15
LBB20_16:
	movl	%ecx, %esi
	orl	$4, %esi
	testq	%r15, %r15
	cmovnel	%ecx, %esi
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	leaq	(%r14,%rax), %rdi
	orl	32(%r14,%rax), %esi
Ltmp445:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp446:
	jmp	LBB20_21
LBB20_9:
Ltmp447:
	jmp	LBB20_19
LBB20_25:
Ltmp444:
	jmp	LBB20_19
LBB20_17:
Ltmp441:
LBB20_19:
	movq	%rax, %rdi
	callq	___cxa_begin_catch
	movq	(%r14), %rax
	movq	%r14, %rdi
	addq	-24(%rax), %rdi
Ltmp448:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp449:
## BB#20:
	callq	___cxa_end_catch
LBB20_21:
	movq	%r14, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB20_18:
Ltmp438:
	jmp	LBB20_19
LBB20_22:
Ltmp450:
	movq	%rax, %rbx
Ltmp451:
	callq	___cxa_end_catch
Ltmp452:
## BB#23:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB20_24:
Ltmp453:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table20:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset307 = Ltmp436-Lfunc_begin9          ## >> Call Site 1 <<
	.long	Lset307
Lset308 = Ltmp437-Ltmp436               ##   Call between Ltmp436 and Ltmp437
	.long	Lset308
Lset309 = Ltmp438-Lfunc_begin9          ##     jumps to Ltmp438
	.long	Lset309
	.byte	1                       ##   On action: 1
Lset310 = Ltmp439-Lfunc_begin9          ## >> Call Site 2 <<
	.long	Lset310
Lset311 = Ltmp440-Ltmp439               ##   Call between Ltmp439 and Ltmp440
	.long	Lset311
Lset312 = Ltmp441-Lfunc_begin9          ##     jumps to Ltmp441
	.long	Lset312
	.byte	1                       ##   On action: 1
Lset313 = Ltmp442-Lfunc_begin9          ## >> Call Site 3 <<
	.long	Lset313
Lset314 = Ltmp443-Ltmp442               ##   Call between Ltmp442 and Ltmp443
	.long	Lset314
Lset315 = Ltmp444-Lfunc_begin9          ##     jumps to Ltmp444
	.long	Lset315
	.byte	1                       ##   On action: 1
Lset316 = Ltmp445-Lfunc_begin9          ## >> Call Site 4 <<
	.long	Lset316
Lset317 = Ltmp446-Ltmp445               ##   Call between Ltmp445 and Ltmp446
	.long	Lset317
Lset318 = Ltmp447-Lfunc_begin9          ##     jumps to Ltmp447
	.long	Lset318
	.byte	1                       ##   On action: 1
Lset319 = Ltmp446-Lfunc_begin9          ## >> Call Site 5 <<
	.long	Lset319
Lset320 = Ltmp448-Ltmp446               ##   Call between Ltmp446 and Ltmp448
	.long	Lset320
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset321 = Ltmp448-Lfunc_begin9          ## >> Call Site 6 <<
	.long	Lset321
Lset322 = Ltmp449-Ltmp448               ##   Call between Ltmp448 and Ltmp449
	.long	Lset322
Lset323 = Ltmp450-Lfunc_begin9          ##     jumps to Ltmp450
	.long	Lset323
	.byte	0                       ##   On action: cleanup
Lset324 = Ltmp449-Lfunc_begin9          ## >> Call Site 7 <<
	.long	Lset324
Lset325 = Ltmp451-Ltmp449               ##   Call between Ltmp449 and Ltmp451
	.long	Lset325
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset326 = Ltmp451-Lfunc_begin9          ## >> Call Site 8 <<
	.long	Lset326
Lset327 = Ltmp452-Ltmp451               ##   Call between Ltmp451 and Ltmp452
	.long	Lset327
Lset328 = Ltmp453-Lfunc_begin9          ##     jumps to Ltmp453
	.long	Lset328
	.byte	1                       ##   On action: 1
Lset329 = Ltmp452-Lfunc_begin9          ## >> Call Site 9 <<
	.long	Lset329
Lset330 = Lfunc_end9-Ltmp452            ##   Call between Ltmp452 and Lfunc_end9
	.long	Lset330
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.globl	_window                 ## @window
.zerofill __DATA,__common,_window,8,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.space	1

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"Impossible to open %s. Are you in the right directory ? Don't forget to read the FAQ !\n"

L_.str.3:                               ## @.str.3
	.asciz	"Compiling shader : %s\n"

L_.str.6:                               ## @.str.6
	.asciz	"Failed to initialize GLFW\n"

L_.str.7:                               ## @.str.7
	.asciz	"Tutorial 02 - Red triangle"

L_.str.8:                               ## @.str.8
	.asciz	"Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n"

L_.str.9:                               ## @.str.9
	.asciz	"Failed to initialize GLEW\n"

L_.str.10:                              ## @.str.10
	.asciz	"SimpleVertexShader.vertexshader"

L_.str.11:                              ## @.str.11
	.asciz	"SimpleFragmentShader.fragmentshader"

	.section	__TEXT,__const
	.align	4                       ## @_ZZ4mainE20g_vertex_buffer_data
__ZZ4mainE20g_vertex_buffer_data:
	.long	3212836864              ## float -1
	.long	3212836864              ## float -1
	.long	0                       ## float 0
	.long	1065353216              ## float 1
	.long	3212836864              ## float -1
	.long	0                       ## float 0
	.long	0                       ## float 0
	.long	1065353216              ## float 1
	.long	0                       ## float 0

	.section	__DATA,__data
	.globl	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.align	3
__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE:
	.quad	424
	.quad	0
	.quad	__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.quad	-424
	.quad	-424
	.quad	__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE ## @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.align	4
__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE+24
	.quad	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE+24
	.quad	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE+64
	.quad	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE+64

	.globl	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE ## @_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE
	.align	4
__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE:
	.quad	424
	.quad	0
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev
	.quad	-424
	.quad	-424
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev

	.section	__TEXT,__const
	.globl	__ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.align	4
__ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE"

	.section	__DATA,__data
	.globl	__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE ## @_ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.align	4
__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE

	.globl	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.align	3
__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	0
	.quad	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi

	.section	__TEXT,__const
	.globl	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.align	4
__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__113basic_filebufIcNS_11char_traitsIcEEEE"

	.section	__DATA,__data
	.globl	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.align	4
__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE

	.section	__TEXT,__cstring,cstring_literals
L_.str.14:                              ## @.str.14
	.asciz	"r"

L_str:                                  ## @str
	.asciz	"Linking program"


.subsections_via_symbols
