	.file	"maintest1.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1662:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1662:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"axG",@progbits,_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
	.p2align 4
	.weak	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	.type	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE, @function
_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE:
.LFB2316:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2316
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	(%rdi), %rax
	movb	$0, 32(%rsp)
	leaq	8(%rsp), %r13
	movq	$0, 24(%rsp)
	leaq	32(%rsp), %r14
	movq	-24(%rax), %rsi
	movq	%r14, 16(%rsp)
	addq	%rdi, %rsi
	movq	%r13, %rdi
	addq	$208, %rsi
	call	_ZNSt6localeC1ERKS_@PLT
	movq	%r13, %rdi
.LEHB0:
	call	_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale@PLT
.LEHE0:
	movq	%rax, %rbp
	movq	%r13, %rdi
	call	_ZNSt6localeD1Ev@PLT
	cmpb	$0, 56(%rbp)
	je	.L4
	movzbl	106(%rbp), %r13d
.L5:
	movsbl	105(%rbp), %r8d
.L8:
	movq	24(%rsp), %rdx
	leaq	16(%rsp), %rdi
	movl	$32, %ecx
	xorl	%esi, %esi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
	movq	16(%rsp), %rsi
	movl	$32, %ecx
	movl	$1, %edx
	movl	$31, %eax
	.p2align 4,,10
	.p2align 3
.L9:
	subq	$1, %rcx
	movq	%rdx, %rdi
	salq	%cl, %rdi
	testq	%rdi, (%rbx)
	je	.L11
	movq	%rax, %rdi
	subq	%rcx, %rdi
	movb	%r13b, (%rsi,%rdi)
	movq	16(%rsp), %rsi
.L11:
	testq	%rcx, %rcx
	jne	.L9
	movq	24(%rsp), %rdx
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rsp), %rdi
	movq	%rax, %r12
	cmpq	%r14, %rdi
	je	.L3
	call	_ZdlPv@PLT
.L3:
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L25
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %r15
	movl	$49, %r13d
	movq	48(%rax), %rax
	cmpq	%r15, %rax
	jne	.L26
.L6:
	cmpb	$0, 56(%rbp)
	jne	.L5
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$48, %r8d
	movq	48(%rax), %rax
	cmpq	%r15, %rax
	je	.L8
	movl	$48, %esi
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %r8d
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L26:
	movl	$49, %esi
	movq	%rbp, %rdi
	call	*%rax
.LEHE1:
	movl	%eax, %r13d
	jmp	.L6
.L25:
	call	__stack_chk_fail@PLT
.L19:
	endbr64
	movq	%rax, %rbp
	jmp	.L13
.L20:
	endbr64
	movq	%rax, %rbp
	jmp	.L14
.L13:
	movq	%r13, %rdi
	call	_ZNSt6localeD1Ev@PLT
.L14:
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L15
	call	_ZdlPv@PLT
.L15:
	movq	%rbp, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE2316:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"aG",@progbits,_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
.LLSDA2316:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2316-.LLSDACSB2316
.LLSDACSB2316:
	.uleb128 .LEHB0-.LFB2316
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L19-.LFB2316
	.uleb128 0
	.uleb128 .LEHB1-.LFB2316
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L20-.LFB2316
	.uleb128 0
	.uleb128 .LEHB2-.LFB2316
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2316:
	.section	.text._ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"axG",@progbits,_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
	.size	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE, .-_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"bitset::bitset: __position (which is %zu) > __s.size() (which is %zu)"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"bitset::_M_copy_from_ptr"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2066:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2066
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%edx, %edx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movabsq	$3544668469065756720, %rbx
	subq	$96, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	leaq	40(%rsp), %rbp
	movl	$4294967295, %eax
	leaq	48(%rsp), %rdi
	leaq	64(%rsp), %r12
	movq	%rbp, %rsi
	movq	$48879, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r12, 48(%rsp)
	movq	$25, 40(%rsp)
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE3:
	movq	40(%rsp), %rdx
	movdqa	.LC2(%rip), %xmm0
	movq	%rax, 48(%rsp)
	movq	%rdx, 64(%rsp)
	movb	$49, 24(%rax)
	movups	%xmm0, (%rax)
	movq	48(%rsp), %rdx
	movq	%rbx, 16(%rax)
	movq	40(%rsp), %rax
	movq	%rax, 56(%rsp)
	movb	$0, (%rdx,%rax)
	movq	56(%rsp), %rdx
	cmpq	$4, %rdx
	jbe	.L51
	subq	$5, %rdx
	leaq	24(%rsp), %rax
	movq	$4, 24(%rsp)
	movq	48(%rsp), %rcx
	cmpq	$3, %rdx
	movq	%rdx, 40(%rsp)
	leaq	32(%rsp), %rdx
	movq	$32, 32(%rsp)
	cmovbe	%rbp, %rax
	cmpq	$31, (%rax)
	cmova	%rdx, %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L31
	leaq	-1(%rbx), %rdx
	leaq	5(%rcx), %rax
	xorl	%ebx, %ebx
	movl	$1, %esi
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L41:
	movq	%rcx, %rdx
.L34:
	movzbl	(%rax), %ecx
	cmpb	$48, %cl
	je	.L32
	cmpb	$49, %cl
	jne	.L33
	movq	%rdx, %rcx
	movq	%rsi, %rdi
	andl	$63, %ecx
	salq	%cl, %rdi
	orq	%rdi, %rbx
.L32:
	addq	$1, %rax
	leaq	-1(%rdx), %rcx
	testq	%rdx, %rdx
	jne	.L41
.L31:
	movq	%rsp, %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB4:
	call	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%rax, %rdi
	leaq	8(%rsp), %rsi
	call	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%rax, %rdi
	leaq	16(%rsp), %rsi
	call	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%rax, %rdi
	leaq	32(%rsp), %rsi
	movl	$4294967283, %eax
	movq	%rax, 32(%rsp)
	call	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	andl	$12, %ebx
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%rbx, 40(%rsp)
	call	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	48(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L35
	call	_ZdlPv@PLT
.L35:
	movq	88(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L52
	addq	$96, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L33:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L51:
	movl	$5, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE4:
.L52:
	call	__stack_chk_fail@PLT
.L42:
	endbr64
	movq	%rax, %rbp
	jmp	.L36
	.section	.gcc_except_table,"a",@progbits
.LLSDA2066:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2066-.LLSDACSB2066
.LLSDACSB2066:
	.uleb128 .LEHB3-.LFB2066
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2066
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L42-.LFB2066
	.uleb128 0
.LLSDACSE2066:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2066
	.type	main.cold, @function
main.cold:
.LFSB2066:
.L36:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	48(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L37
	call	_ZdlPv@PLT
.L37:
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE2066:
	.section	.gcc_except_table
.LLSDAC2066:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2066-.LLSDACSBC2066
.LLSDACSBC2066:
	.uleb128 .LEHB5-.LCOLDB3
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2066:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2578:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2578:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.quad	3544668469065756977
	.quad	3472328296227680305
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
