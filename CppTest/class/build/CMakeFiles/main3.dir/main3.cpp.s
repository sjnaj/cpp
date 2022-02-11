	.file	"main3.cpp"
	.text
	.align 2
	.p2align 4
	.type	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0, @function
_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0:
.LFB4197:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	-8(%rdi), %rsi
	salq	$5, %rsi
	leaq	(%rdi,%rsi), %rbx
	cmpq	%rbx, %rdi
	je	.L3
	movq	-32(%rbx), %rdi
	subq	$32, %rbx
	testq	%rdi, %rdi
	je	.L4
.L12:
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	leaq	-32(%rbx), %rax
	cmpq	%rbx, %rbp
	je	.L5
.L6:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L12
.L4:
	leaq	-32(%rbx), %rax
	cmpq	%rbx, %rbp
	jne	.L6
.L5:
	movq	-8(%rbp), %rsi
	salq	$5, %rsi
.L3:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	-8(%rbp), %rdi
	addq	$8, %rsi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	_ZdaPvm@PLT
	.p2align 4,,10
	.p2align 3
.L1:
	ret
	.cfi_endproc
.LFE4197:
	.size	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0, .-_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	.section	.text._ZN10ComplexPtrD2Ev,"axG",@progbits,_ZN10ComplexPtrD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN10ComplexPtrD2Ev
	.type	_ZN10ComplexPtrD2Ev, @function
_ZN10ComplexPtrD2Ev:
.LFB3490:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %r12
	testq	%r12, %r12
	je	.L13
	movq	(%r12), %rbx
	testq	%rbx, %rbx
	je	.L15
	movq	-8(%rbx), %rsi
	salq	$5, %rsi
	leaq	(%rbx,%rsi), %rbp
	cmpq	%rbp, %rbx
	je	.L16
.L20:
	movq	-32(%rbp), %rdi
	subq	$32, %rbp
	testq	%rdi, %rdi
	je	.L17
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	cmpq	%rbp, %rbx
	jne	.L20
.L18:
	movq	-8(%rbx), %rsi
	salq	$5, %rsi
.L16:
	addq	$8, %rsi
	leaq	-8(%rbx), %rdi
	call	_ZdaPvm@PLT
.L15:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%r12, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	movl	$32, %esi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	cmpq	%rbp, %rbx
	jne	.L20
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L13:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3490:
	.size	_ZN10ComplexPtrD2Ev, .-_ZN10ComplexPtrD2Ev
	.weak	_ZN10ComplexPtrD1Ev
	.set	_ZN10ComplexPtrD1Ev,_ZN10ComplexPtrD2Ev
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.section	.text.startup,"ax",@progbits
.LHOTB4:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3500:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3500
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
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$264, %rsp
	.cfi_def_cfa_offset 320
	movq	%fs:40, %rax
	movq	%rax, 248(%rsp)
	xorl	%eax, %eax
	movq	.LC0(%rip), %rax
	leaq	48(%rsp), %r13
	leaq	16(%rsp), %r12
	leaq	224(%rsp), %rbx
	leaq	80(%rsp), %rdi
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rax, 24(%rsp)
	movq	.LC1(%rip), %rax
	movq	%rbx, 208(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	.LC2(%rip), %rax
	movl	$1634492780, 224(%rsp)
	movb	$108, 228(%rsp)
	movq	$5, 216(%rsp)
	movb	$0, 229(%rsp)
	movq	$4, 16+_ZSt4cout(%rip)
	movq	$0, 16(%rsp)
	movq	$0, 48(%rsp)
	movq	%rax, 72(%rsp)
.LEHB0:
	call	_ZNK7ComplexplERKS_@PLT
.LEHE0:
	movq	%r12, %rdi
.LEHB1:
	call	_ZNK7Complex7displayEv@PLT
	leaq	176(%rsp), %rbp
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZN7Complex9conjugateEv@PLT
.LEHE1:
	movq	%rbp, %rdi
.LEHB2:
	call	_ZN7Complex7displayERKS_@PLT
.LEHE2:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L26
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L26:
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB3:
	call	_ZNK7ComplexplERKS_@PLT
.LEHE3:
	movq	%rbp, %rdi
.LEHB4:
	call	_ZN7Complex7displayERKS_@PLT
.LEHE4:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L27
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L27:
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB5:
	call	_ZNK7ComplexmiERKS_@PLT
.LEHE5:
	movq	%rbp, %rdi
.LEHB6:
	call	_ZN7Complex7displayERKS_@PLT
.LEHE6:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L28
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L28:
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB7:
	call	_ZNK7ComplexmlERKS_@PLT
.LEHE7:
	movq	%rbp, %rdi
.LEHB8:
	call	_ZN7Complex7displayERKS_@PLT
.LEHE8:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L29
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L29:
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB9:
	call	_ZNK7ComplexdvERKS_@PLT
.LEHE9:
	movq	%rbp, %rdi
.LEHB10:
	call	_ZN7Complex7displayERKS_@PLT
.LEHE10:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L30
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L30:
	movq	%r12, %rdi
.LEHB11:
	call	_ZNK7Complex10displayExpEv@PLT
	movq	%r12, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZN7ComplexmLERKS_@PLT
.LEHE11:
	movq	%rbp, %rdi
.LEHB12:
	call	_ZN7Complex7displayERKS_@PLT
.LEHE12:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L31
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L31:
	movq	.LC1(%rip), %rax
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, %xmm0
.LEHB13:
	call	_ZpldRK7Complex@PLT
.LEHE13:
	movq	%rbp, %rdi
.LEHB14:
	call	_ZN7Complex7displayERKS_@PLT
.LEHE14:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L32
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L32:
	movl	$168, %edi
.LEHB15:
	call	_Znam@PLT
.LEHE15:
	movq	$5, (%rax)
	leaq	112(%rsp), %r14
	addq	$8, %rax
	xorl	%esi, %esi
	movq	$0, (%rax)
	movq	%r14, %rdi
	movq	$0x000000000, 8(%rax)
	movq	$0x000000000, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0x000000000, 40(%rax)
	movq	$0x000000000, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0x000000000, 72(%rax)
	movq	$0x000000000, 88(%rax)
	movq	$0, 96(%rax)
	movq	$0x000000000, 104(%rax)
	movq	$0x000000000, 120(%rax)
	movq	$0, 128(%rax)
	movq	$0x000000000, 136(%rax)
	movq	$0x000000000, 152(%rax)
	movl	$5, 136(%rsp)
	movq	%rax, 112(%rsp)
.LEHB16:
	call	_ZN7ComplexixEi@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	call	_ZN7ComplexaSERKS_@PLT
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	_ZN7ComplexixEi@PLT
	movq	%rax, %rdi
	call	_ZN7Complex7displayERKS_@PLT
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	_ZN7ComplexixEi@PLT
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %r15
	call	_ZN7ComplexixEi@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	call	_ZN7ComplexaSERKS_@PLT
	movl	$2, %esi
	movq	%r14, %rdi
	movq	%rax, %r15
	call	_ZN7ComplexixEi@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	call	_ZN7ComplexaSERKS_@PLT
	movl	$3, %esi
	movq	%r14, %rdi
	movq	%rax, %r15
	call	_ZN7ComplexixEi@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	call	_ZN7ComplexaSERKS_@PLT
	movl	$3, %esi
	movq	%r14, %rdi
	call	_ZN7ComplexixEi@PLT
	movq	%rax, %rdi
	call	_ZN7Complex7displayERKS_@PLT
	movl	$1, %esi
	movq	%r14, %rdi
	call	_ZN7ComplexixEi@PLT
	movl	$2, %esi
	movq	%r14, %rdi
	movq	%rax, %r15
	call	_ZN7ComplexixEi@PLT
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	%rbp, %rdi
	call	_ZNK7ComplexplERKS_@PLT
.LEHE16:
	movq	%rbp, %rdi
.LEHB17:
	call	_ZN7Complex7displayERKS_@PLT
.LEHE17:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L33
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L33:
	movq	%r12, %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB18:
	call	_ZlsRSoRK7Complex@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, %r15
	call	_ZNK7ComplexdvERKS_@PLT
.LEHE18:
	movq	%rbp, %rsi
	movq	%r15, %rdi
.LEHB19:
	call	_ZlsRSoRK7Complex@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE19:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L34
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L34:
	movq	%r13, %rdi
.LEHB20:
	call	_ZNK7ComplexcvdEv@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	leaq	144(%rsp), %r13
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_ZN7ComplexC1ERKS_@PLT
.LEHE20:
	xorl	%esi, %esi
	movq	%r13, %rdi
.LEHB21:
	call	_ZN7ComplexixEi@PLT
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZlsRSoRK7Complex@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN7ComplexC1EOS_@PLT
.LEHE21:
	movq	%r12, %rdi
.LEHB22:
	call	_ZNK7ComplexcvdEv@PLT
	addsd	.LC1(%rip), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$32, %edi
	call	_Znwm@PLT
.LEHE22:
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB23:
	call	_ZN7ComplexC1ERKS_@PLT
.LEHE23:
	movl	$32, %edi
	movq	%rbp, (%rsp)
.LEHB24:
	call	_Znwm@PLT
.LEHE24:
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB25:
	call	_ZN7ComplexC1ERKS_@PLT
.LEHE25:
	movq	(%rsp), %rdi
	movq	%r12, 8(%rsp)
.LEHB26:
	call	_ZNK7Complex7displayEv@PLT
	movq	8(%rsp), %rdi
	call	_ZNK7Complex7displayEv@PLT
.LEHE26:
	leaq	8(%rsp), %rdi
	call	_ZN10ComplexPtrD1Ev
	movq	%rsp, %rdi
	call	_ZN10ComplexPtrD1Ev
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L38
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L38:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L39
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L39:
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L40
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L40:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L41
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L41:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L42
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L42:
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L43
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L43:
	movq	208(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L44
	call	_ZdlPv@PLT
.L44:
	movq	248(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L189
	addq	$264, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
.L189:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L94:
	endbr64
	movq	%rax, %rbp
	jmp	.L67
.L95:
	endbr64
	movq	%rax, %rbp
	jmp	.L36
.L93:
	endbr64
	movq	%rax, %rbp
	jmp	.L37
.L92:
	endbr64
	movq	%rax, %r12
	jmp	.L65
.L91:
	endbr64
	movq	%rax, %rbp
	jmp	.L66
.L90:
	endbr64
	movq	%rax, %rbp
	jmp	.L69
.L89:
	endbr64
	movq	%rax, %rbp
	jmp	.L63
.L88:
	endbr64
	movq	%rax, %rbp
	jmp	.L60
.L87:
	endbr64
	movq	%rax, %rbp
	jmp	.L62
.L86:
	endbr64
	movq	%rax, %rbp
	jmp	.L58
.L85:
	endbr64
	movq	%rax, %rbp
	jmp	.L56
.L81:
	endbr64
	movq	%rax, %rbp
	jmp	.L48
.L83:
	endbr64
	movq	%rax, %rbp
	jmp	.L52
.L79:
	endbr64
	movq	%rax, %rbp
	jmp	.L47
.L84:
	endbr64
	movq	%rax, %rbp
	jmp	.L54
.L82:
	endbr64
	movq	%rax, %rbp
	jmp	.L50
.L80:
	endbr64
	movq	%rax, %rbp
	jmp	.L45
.L78:
	endbr64
	movq	%rax, %rbp
	jmp	.L73
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3500:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3500-.LLSDACSB3500
.LLSDACSB3500:
	.uleb128 .LEHB0-.LFB3500
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L78-.LFB3500
	.uleb128 0
	.uleb128 .LEHB1-.LFB3500
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L79-.LFB3500
	.uleb128 0
	.uleb128 .LEHB2-.LFB3500
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L80-.LFB3500
	.uleb128 0
	.uleb128 .LEHB3-.LFB3500
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L79-.LFB3500
	.uleb128 0
	.uleb128 .LEHB4-.LFB3500
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L81-.LFB3500
	.uleb128 0
	.uleb128 .LEHB5-.LFB3500
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L79-.LFB3500
	.uleb128 0
	.uleb128 .LEHB6-.LFB3500
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L82-.LFB3500
	.uleb128 0
	.uleb128 .LEHB7-.LFB3500
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L79-.LFB3500
	.uleb128 0
	.uleb128 .LEHB8-.LFB3500
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L83-.LFB3500
	.uleb128 0
	.uleb128 .LEHB9-.LFB3500
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L79-.LFB3500
	.uleb128 0
	.uleb128 .LEHB10-.LFB3500
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L84-.LFB3500
	.uleb128 0
	.uleb128 .LEHB11-.LFB3500
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L79-.LFB3500
	.uleb128 0
	.uleb128 .LEHB12-.LFB3500
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L85-.LFB3500
	.uleb128 0
	.uleb128 .LEHB13-.LFB3500
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L79-.LFB3500
	.uleb128 0
	.uleb128 .LEHB14-.LFB3500
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L86-.LFB3500
	.uleb128 0
	.uleb128 .LEHB15-.LFB3500
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L79-.LFB3500
	.uleb128 0
	.uleb128 .LEHB16-.LFB3500
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L87-.LFB3500
	.uleb128 0
	.uleb128 .LEHB17-.LFB3500
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L88-.LFB3500
	.uleb128 0
	.uleb128 .LEHB18-.LFB3500
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L87-.LFB3500
	.uleb128 0
	.uleb128 .LEHB19-.LFB3500
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L89-.LFB3500
	.uleb128 0
	.uleb128 .LEHB20-.LFB3500
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L87-.LFB3500
	.uleb128 0
	.uleb128 .LEHB21-.LFB3500
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L90-.LFB3500
	.uleb128 0
	.uleb128 .LEHB22-.LFB3500
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L91-.LFB3500
	.uleb128 0
	.uleb128 .LEHB23-.LFB3500
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L92-.LFB3500
	.uleb128 0
	.uleb128 .LEHB24-.LFB3500
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L93-.LFB3500
	.uleb128 0
	.uleb128 .LEHB25-.LFB3500
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L95-.LFB3500
	.uleb128 0
	.uleb128 .LEHB26-.LFB3500
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L94-.LFB3500
	.uleb128 0
.LLSDACSE3500:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3500
	.type	main.cold, @function
main.cold:
.LFSB3500:
.L67:
	.cfi_def_cfa_offset 320
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	leaq	8(%rsp), %rdi
	call	_ZN10ComplexPtrD1Ev
.L37:
	movq	%rsp, %rdi
	call	_ZN10ComplexPtrD1Ev
.L66:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L69
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L69:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L62
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L62:
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L47
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L47:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L73
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L73:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L74
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L74:
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L75
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L75:
	movq	208(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L76
	call	_ZdlPv@PLT
.L76:
	movq	%rbp, %rdi
.LEHB27:
	call	_Unwind_Resume@PLT
.LEHE27:
.L36:
	movl	$32, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	jmp	.L37
.L65:
	movq	%rbp, %rdi
	movl	$32, %esi
	movq	%r12, %rbp
	call	_ZdlPvm@PLT
	jmp	.L66
.L63:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L62
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	jmp	.L62
.L60:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L62
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	jmp	.L62
.L58:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L47
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	jmp	.L47
.L54:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L47
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	jmp	.L47
.L48:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L47
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	jmp	.L47
.L50:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L47
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	jmp	.L47
.L56:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L47
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	jmp	.L47
.L45:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L47
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	jmp	.L47
.L52:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L47
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	jmp	.L47
	.cfi_endproc
.LFE3500:
	.section	.gcc_except_table
.LLSDAC3500:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3500-.LLSDACSBC3500
.LLSDACSBC3500:
	.uleb128 .LEHB27-.LCOLDB4
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSEC3500:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB4180:
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
.LFE4180:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	-1074790400
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1074003968
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
