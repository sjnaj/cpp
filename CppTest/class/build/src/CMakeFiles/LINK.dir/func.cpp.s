	.file	"func.cpp"
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
	.text
	.align 2
	.p2align 4
	.type	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0, @function
_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0:
.LFB4233:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L3
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
	je	.L5
	movq	-32(%rbx), %rdi
	subq	$32, %rbx
	testq	%rdi, %rdi
	je	.L6
.L13:
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	leaq	-32(%rbx), %rax
	cmpq	%rbx, %rbp
	je	.L7
.L8:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L13
.L6:
	leaq	-32(%rbx), %rax
	cmpq	%rbx, %rbp
	jne	.L8
.L7:
	movq	-8(%rbp), %rsi
	salq	$5, %rsi
.L5:
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
.L3:
	ret
	.cfi_endproc
.LFE4233:
	.size	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0, .-_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	.align 2
	.p2align 4
	.globl	_ZNK7Complex7displayEv
	.type	_ZNK7Complex7displayEv, @function
_ZNK7Complex7displayEv:
.LFB3500:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm2, %xmm2
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movsd	24(%rdi), %xmm0
	movsd	8(%rdi), %xmm1
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	ucomisd	%xmm2, %xmm0
	jp	.L15
	jne	.L15
	ucomisd	%xmm2, %xmm1
	jnp	.L38
.L17:
	movapd	%xmm1, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movsd	24(%rbx), %xmm0
	pxor	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm0
	jp	.L28
	jne	.L28
	leaq	_ZSt4cout(%rip), %rbx
.L23:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L25
	cmpb	$0, 56(%rbp)
	je	.L26
	movsbl	67(%rbp), %esi
.L27:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.L14:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L39
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
	pxor	%xmm5, %xmm5
	ucomisd	%xmm5, %xmm1
	jp	.L17
	jne	.L17
.L28:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rbx
	movq	%rbx, %rdi
	movq	-24(%rax), %rcx
	addq	%rbx, %rcx
	orl	$2048, 24(%rcx)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	7(%rsp), %rsi
	movb	$105, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rax), %rdx
	addq	-24(%rdx), %rax
	andl	$-2049, 24(%rax)
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L26:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L27
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L38:
	jne	.L17
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movb	$48, 7(%rsp)
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r12
	testq	%r12, %r12
	je	.L25
	cmpb	$0, 56(%r12)
	je	.L20
	movsbl	67(%r12), %esi
.L21:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L20:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L21
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L21
.L25:
	call	_ZSt16__throw_bad_castv@PLT
.L39:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3500:
	.size	_ZNK7Complex7displayEv, .-_ZNK7Complex7displayEv
	.align 2
	.p2align 4
	.globl	_ZN7Complex7displayERKS_
	.type	_ZN7Complex7displayERKS_, @function
_ZN7Complex7displayERKS_:
.LFB3501:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm2, %xmm2
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movsd	24(%rdi), %xmm0
	movsd	8(%rdi), %xmm1
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	ucomisd	%xmm2, %xmm0
	jp	.L41
	jne	.L41
	ucomisd	%xmm2, %xmm1
	jnp	.L64
.L43:
	movapd	%xmm1, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movsd	24(%rbx), %xmm0
	pxor	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm0
	jp	.L54
	jne	.L54
	leaq	_ZSt4cout(%rip), %rbx
.L49:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L51
	cmpb	$0, 56(%rbp)
	je	.L52
	movsbl	67(%rbp), %esi
.L53:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.L40:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L65
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	pxor	%xmm5, %xmm5
	ucomisd	%xmm5, %xmm1
	jp	.L43
	jne	.L43
.L54:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rbx
	movq	%rbx, %rdi
	movq	-24(%rax), %rcx
	addq	%rbx, %rcx
	orl	$2048, 24(%rcx)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	7(%rsp), %rsi
	movb	$105, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rax), %rdx
	addq	-24(%rdx), %rax
	andl	$-2049, 24(%rax)
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L52:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L53
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L64:
	jne	.L43
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movb	$48, 7(%rsp)
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r12
	testq	%r12, %r12
	je	.L51
	cmpb	$0, 56(%r12)
	je	.L46
	movsbl	67(%r12), %esi
.L47:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L46:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L47
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L47
.L51:
	call	_ZSt16__throw_bad_castv@PLT
.L65:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3501:
	.size	_ZN7Complex7displayERKS_, .-_ZN7Complex7displayERKS_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"e^(i"
	.text
	.align 2
	.p2align 4
	.globl	_ZNK7Complex10displayExpEv
	.type	_ZNK7Complex10displayExpEv, @function
_ZNK7Complex10displayExpEv:
.LFB3502:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movsd	8(%rdi), %xmm0
	movsd	24(%rdi), %xmm1
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	movapd	%xmm0, %xmm1
	sqrtsd	%xmm1, %xmm1
	ja	.L77
.L67:
	movapd	%xmm1, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movsd	24(%rbx), %xmm0
	movsd	8(%rbx), %xmm1
	call	atan2@PLT
	pxor	%xmm3, %xmm3
	mulsd	.LC1(%rip), %xmm0
	divsd	.LC2(%rip), %xmm0
	ucomisd	%xmm3, %xmm0
	jp	.L75
	jne	.L75
.L68:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L78
	cmpb	$0, 56(%rbp)
	je	.L71
	movsbl	67(%rbp), %esi
.L72:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L79
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L72
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L75:
	movl	$4, %edx
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	23(%rsp), %rsi
	movl	$1, %edx
	movb	$41, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.L68
.L77:
	movsd	%xmm1, 8(%rsp)
	call	sqrt@PLT
	movsd	8(%rsp), %xmm1
	jmp	.L67
.L78:
	call	_ZSt16__throw_bad_castv@PLT
.L79:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3502:
	.size	_ZNK7Complex10displayExpEv, .-_ZNK7Complex10displayExpEv
	.align 2
	.p2align 4
	.globl	_ZN7Complex10displayExpERKS_
	.type	_ZN7Complex10displayExpERKS_, @function
_ZN7Complex10displayExpERKS_:
.LFB3503:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movsd	8(%rdi), %xmm0
	movsd	24(%rdi), %xmm1
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	movapd	%xmm0, %xmm1
	sqrtsd	%xmm1, %xmm1
	ja	.L91
.L81:
	movapd	%xmm1, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movsd	24(%rbx), %xmm0
	movsd	8(%rbx), %xmm1
	call	atan2@PLT
	pxor	%xmm3, %xmm3
	mulsd	.LC1(%rip), %xmm0
	divsd	.LC2(%rip), %xmm0
	ucomisd	%xmm3, %xmm0
	jp	.L89
	jne	.L89
.L82:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L92
	cmpb	$0, 56(%rbp)
	je	.L85
	movsbl	67(%rbp), %esi
.L86:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L93
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L86
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L89:
	movl	$4, %edx
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	23(%rsp), %rsi
	movl	$1, %edx
	movb	$41, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.L82
.L91:
	movsd	%xmm1, 8(%rsp)
	call	sqrt@PLT
	movsd	8(%rsp), %xmm1
	jmp	.L81
.L92:
	call	_ZSt16__throw_bad_castv@PLT
.L93:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3503:
	.size	_ZN7Complex10displayExpERKS_, .-_ZN7Complex10displayExpERKS_
	.align 2
	.p2align 4
	.globl	_ZNK7ComplexplERKS_
	.type	_ZNK7ComplexplERKS_, @function
_ZNK7ComplexplERKS_:
.LFB3504:
	.cfi_startproc
	endbr64
	movsd	24(%rdx), %xmm0
	movsd	8(%rdx), %xmm1
	movq	%rdi, %rax
	addsd	24(%rsi), %xmm0
	addsd	8(%rsi), %xmm1
	movq	$0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	movsd	%xmm0, 24(%rdi)
	ret
	.cfi_endproc
.LFE3504:
	.size	_ZNK7ComplexplERKS_, .-_ZNK7ComplexplERKS_
	.p2align 4
	.globl	_ZpldRK7Complex
	.type	_ZpldRK7Complex, @function
_ZpldRK7Complex:
.LFB3505:
	.cfi_startproc
	endbr64
	addsd	8(%rsi), %xmm0
	movsd	24(%rsi), %xmm1
	movq	%rdi, %rax
	movq	$0, (%rdi)
	movsd	%xmm1, 24(%rdi)
	movsd	%xmm0, 8(%rdi)
	ret
	.cfi_endproc
.LFE3505:
	.size	_ZpldRK7Complex, .-_ZpldRK7Complex
	.align 2
	.p2align 4
	.globl	_ZNK7ComplexmiERKS_
	.type	_ZNK7ComplexmiERKS_, @function
_ZNK7ComplexmiERKS_:
.LFB3506:
	.cfi_startproc
	endbr64
	movsd	24(%rsi), %xmm0
	movsd	8(%rsi), %xmm1
	movq	%rdi, %rax
	subsd	24(%rdx), %xmm0
	subsd	8(%rdx), %xmm1
	movq	$0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	movsd	%xmm0, 24(%rdi)
	ret
	.cfi_endproc
.LFE3506:
	.size	_ZNK7ComplexmiERKS_, .-_ZNK7ComplexmiERKS_
	.align 2
	.p2align 4
	.globl	_ZNK7ComplexmlERKS_
	.type	_ZNK7ComplexmlERKS_, @function
_ZNK7ComplexmlERKS_:
.LFB3507:
	.cfi_startproc
	endbr64
	movsd	24(%rdx), %xmm0
	movsd	8(%rsi), %xmm4
	movq	%rdi, %rax
	movsd	8(%rdx), %xmm1
	movsd	24(%rsi), %xmm3
	movq	$0, (%rdi)
	movapd	%xmm4, %xmm2
	movapd	%xmm0, %xmm5
	mulsd	%xmm1, %xmm2
	mulsd	%xmm3, %xmm5
	mulsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm1
	subsd	%xmm5, %xmm2
	addsd	%xmm1, %xmm0
	movsd	%xmm2, 8(%rdi)
	movsd	%xmm0, 24(%rdi)
	ret
	.cfi_endproc
.LFE3507:
	.size	_ZNK7ComplexmlERKS_, .-_ZNK7ComplexmlERKS_
	.align 2
	.p2align 4
	.globl	_ZNK7ComplexdvERKS_
	.type	_ZNK7ComplexdvERKS_, @function
_ZNK7ComplexdvERKS_:
.LFB3508:
	.cfi_startproc
	endbr64
	movsd	24(%rdx), %xmm1
	movsd	8(%rdx), %xmm0
	movq	%rdi, %rax
	movsd	24(%rsi), %xmm5
	movsd	8(%rsi), %xmm4
	movq	$0, (%rdi)
	movapd	%xmm1, %xmm3
	movapd	%xmm0, %xmm2
	movapd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm3
	mulsd	%xmm5, %xmm6
	mulsd	%xmm4, %xmm1
	addsd	%xmm2, %xmm3
	movapd	%xmm0, %xmm2
	mulsd	%xmm4, %xmm2
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm2
	subsd	%xmm1, %xmm0
	divsd	%xmm3, %xmm2
	divsd	%xmm3, %xmm0
	movsd	%xmm2, 8(%rdi)
	movsd	%xmm0, 24(%rdi)
	ret
	.cfi_endproc
.LFE3508:
	.size	_ZNK7ComplexdvERKS_, .-_ZNK7ComplexdvERKS_
	.section	.rodata.str1.1
.LC4:
	.string	"Out Of Range"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4
	.globl	_ZN7ComplexixEi
	.type	_ZN7ComplexixEi, @function
_ZN7ComplexixEi:
.LFB3513:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3513
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L100
	cmpl	%esi, 24(%rdi)
	jle	.L100
	movslq	%esi, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	salq	$5, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	addq	%rsi, %rax
	ret
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3513:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3513-.LLSDACSB3513
.LLSDACSB3513:
.LLSDACSE3513:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3513
	.type	_ZN7ComplexixEi.cold, @function
_ZN7ComplexixEi.cold:
.LFSB3513:
.L100:
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB0:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE0:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	leaq	_ZTISt12out_of_range(%rip), %rsi
	movq	%rbp, %rdi
.LEHB1:
	call	__cxa_throw@PLT
.L102:
	endbr64
	movq	%rax, %r12
	movq	%rbp, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE3513:
	.section	.gcc_except_table
.LLSDAC3513:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3513-.LLSDACSBC3513
.LLSDACSBC3513:
	.uleb128 .LEHB0-.LCOLDB5
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L102-.LCOLDB5
	.uleb128 0
	.uleb128 .LEHB1-.LCOLDB5
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC3513:
	.section	.text.unlikely
	.text
	.size	_ZN7ComplexixEi, .-_ZN7ComplexixEi
	.section	.text.unlikely
	.size	_ZN7ComplexixEi.cold, .-_ZN7ComplexixEi.cold
.LCOLDE5:
	.text
.LHOTE5:
	.align 2
	.p2align 4
	.globl	_ZN7ComplexaSERKS_
	.type	_ZN7ComplexaSERKS_, @function
_ZN7ComplexaSERKS_:
.LFB3514:
	.cfi_startproc
	endbr64
	movsd	8(%rsi), %xmm0
	movq	%rdi, %rax
	movsd	%xmm0, 8(%rdi)
	movsd	24(%rsi), %xmm0
	movsd	%xmm0, 24(%rdi)
	ret
	.cfi_endproc
.LFE3514:
	.size	_ZN7ComplexaSERKS_, .-_ZN7ComplexaSERKS_
	.section	.text.unlikely
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.globl	_ZN7ComplexC2ERKS_
	.type	_ZN7ComplexC2ERKS_, @function
_ZN7ComplexC2ERKS_:
.LFB3516:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3516
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	$0, (%rdi)
	cmpq	$0, (%rsi)
	je	.L138
	movabsq	$288230376151711743, %rax
	movslq	24(%rsi), %rbx
	movq	%rbx, %rdi
	movl	%ebx, 24(%r12)
	salq	$5, %rdi
	addq	$8, %rdi
	cmpq	%rax, %rbx
	movq	$-1, %rax
	cmova	%rax, %rdi
.LEHB2:
	call	_Znam@PLT
.LEHE2:
	movq	%rbx, (%rax)
	leaq	8(%rax), %rcx
	subq	$1, %rbx
	movq	%rcx, %rax
	movq	%rbx, %rdx
	js	.L116
	.p2align 4,,10
	.p2align 3
.L117:
	subq	$1, %rdx
	movq	$0, (%rax)
	addq	$32, %rax
	movq	$0x000000000, -24(%rax)
	movq	$0x000000000, -8(%rax)
	cmpq	$-1, %rdx
	jne	.L117
.L116:
	movq	(%r12), %rbx
	movq	%rcx, (%r12)
	testq	%rbx, %rbx
	je	.L115
	movq	-8(%rbx), %rsi
	salq	$5, %rsi
	leaq	(%rbx,%rsi), %r13
	cmpq	%r13, %rbx
	je	.L118
.L122:
	movq	-32(%r13), %rdi
	subq	$32, %r13
	testq	%rdi, %rdi
	je	.L119
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
	cmpq	%r13, %rbx
	jne	.L122
.L120:
	movq	-8(%rbx), %rsi
	salq	$5, %rsi
.L118:
	addq	$8, %rsi
	leaq	-8(%rbx), %rdi
	call	_ZdaPvm@PLT
.L115:
	movl	24(%rbp), %eax
	testl	%eax, %eax
	jle	.L109
	movq	0(%rbp), %rsi
	movq	(%r12), %rcx
	movl	$8, %eax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L125:
	movsd	(%rsi,%rax), %xmm0
	addl	$1, %edx
	movsd	%xmm0, (%rcx,%rax)
	movsd	16(%rsi,%rax), %xmm0
	movsd	%xmm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, 24(%rbp)
	jg	.L125
.L109:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L138:
	.cfi_restore_state
	movsd	24(%rsi), %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	8(%rsi), %xmm0
	movsd	%xmm0, 8(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L119:
	.cfi_restore_state
	cmpq	%r13, %rbx
	jne	.L122
	jmp	.L120
.L129:
	endbr64
	movq	%rax, %rbp
	jmp	.L126
	.section	.gcc_except_table
.LLSDA3516:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3516-.LLSDACSB3516
.LLSDACSB3516:
	.uleb128 .LEHB2-.LFB3516
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L129-.LFB3516
	.uleb128 0
.LLSDACSE3516:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3516
	.type	_ZN7ComplexC2ERKS_.cold, @function
_ZN7ComplexC2ERKS_.cold:
.LFSB3516:
.L126:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L127
	call	_ZNKSt14default_deleteIA_7ComplexEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_.isra.0
.L127:
	movq	%rbp, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE3516:
	.section	.gcc_except_table
.LLSDAC3516:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3516-.LLSDACSBC3516
.LLSDACSBC3516:
	.uleb128 .LEHB3-.LCOLDB6
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC3516:
	.section	.text.unlikely
	.text
	.size	_ZN7ComplexC2ERKS_, .-_ZN7ComplexC2ERKS_
	.section	.text.unlikely
	.size	_ZN7ComplexC2ERKS_.cold, .-_ZN7ComplexC2ERKS_.cold
.LCOLDE6:
	.text
.LHOTE6:
	.globl	_ZN7ComplexC1ERKS_
	.set	_ZN7ComplexC1ERKS_,_ZN7ComplexC2ERKS_
	.align 2
	.p2align 4
	.globl	_ZN7ComplexpLERKS_
	.type	_ZN7ComplexpLERKS_, @function
_ZN7ComplexpLERKS_:
.LFB3509:
	.cfi_startproc
	endbr64
	movsd	8(%rsi), %xmm0
	addsd	8(%rdx), %xmm0
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	movsd	%xmm0, 8(%rsi)
	movsd	24(%rsi), %xmm0
	addsd	24(%rdx), %xmm0
	movsd	%xmm0, 24(%rsi)
	call	_ZN7ComplexC1ERKS_
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3509:
	.size	_ZN7ComplexpLERKS_, .-_ZN7ComplexpLERKS_
	.align 2
	.p2align 4
	.globl	_ZN7ComplexmIERKS_
	.type	_ZN7ComplexmIERKS_, @function
_ZN7ComplexmIERKS_:
.LFB3510:
	.cfi_startproc
	endbr64
	movsd	8(%rsi), %xmm0
	subsd	8(%rdx), %xmm0
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	movsd	%xmm0, 8(%rsi)
	movsd	24(%rsi), %xmm0
	subsd	24(%rdx), %xmm0
	movsd	%xmm0, 24(%rsi)
	call	_ZN7ComplexC1ERKS_
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3510:
	.size	_ZN7ComplexmIERKS_, .-_ZN7ComplexmIERKS_
	.align 2
	.p2align 4
	.globl	_ZN7ComplexmLERKS_
	.type	_ZN7ComplexmLERKS_, @function
_ZN7ComplexmLERKS_:
.LFB3511:
	.cfi_startproc
	endbr64
	movsd	24(%rdx), %xmm4
	movsd	8(%rsi), %xmm0
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	movsd	8(%rdx), %xmm3
	movsd	24(%rsi), %xmm1
	movapd	%xmm0, %xmm2
	movapd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	mulsd	%xmm3, %xmm2
	mulsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm1
	subsd	%xmm5, %xmm2
	addsd	%xmm1, %xmm0
	movsd	%xmm2, 8(%rsi)
	movsd	%xmm0, 24(%rsi)
	call	_ZN7ComplexC1ERKS_
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3511:
	.size	_ZN7ComplexmLERKS_, .-_ZN7ComplexmLERKS_
	.align 2
	.p2align 4
	.globl	_ZN7ComplexdVERKS_
	.type	_ZN7ComplexdVERKS_, @function
_ZN7ComplexdVERKS_:
.LFB3512:
	.cfi_startproc
	endbr64
	movsd	8(%rdx), %xmm0
	movsd	24(%rsi), %xmm4
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	movsd	24(%rdx), %xmm3
	movsd	8(%rsi), %xmm1
	movapd	%xmm0, %xmm2
	movapd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm2
	mulsd	%xmm3, %xmm5
	mulsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm1
	addsd	%xmm5, %xmm2
	subsd	%xmm1, %xmm0
	movsd	%xmm2, 8(%rsi)
	movsd	%xmm0, 24(%rsi)
	call	_ZN7ComplexC1ERKS_
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3512:
	.size	_ZN7ComplexdVERKS_, .-_ZN7ComplexdVERKS_
	.align 2
	.p2align 4
	.globl	_ZN7ComplexC2EOS_
	.type	_ZN7ComplexC2EOS_, @function
_ZN7ComplexC2EOS_:
.LFB3520:
	.cfi_startproc
	endbr64
	movq	$0, (%rdi)
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.L150
	movl	24(%rsi), %edx
	movq	$0, (%rsi)
	movq	%rax, (%rdi)
	movl	%edx, 24(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L150:
	movsd	24(%rsi), %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	8(%rsi), %xmm0
	movsd	%xmm0, 8(%rdi)
	ret
	.cfi_endproc
.LFE3520:
	.size	_ZN7ComplexC2EOS_, .-_ZN7ComplexC2EOS_
	.globl	_ZN7ComplexC1EOS_
	.set	_ZN7ComplexC1EOS_,_ZN7ComplexC2EOS_
	.section	.rodata.str1.1
.LC7:
	.string	"illegal access"
	.text
	.align 2
	.p2align 4
	.globl	_ZNK7ComplexixEi
	.type	_ZNK7ComplexixEi, @function
_ZNK7ComplexixEi:
.LFB3522:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	24(%rdi), %eax
	testl	%eax, %eax
	je	.L152
	movq	(%rdi), %rax
	movslq	%esi, %rsi
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	salq	$5, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	addq	%rsi, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L152:
	.cfi_restore_state
	movl	$14, %edx
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L159
	cmpb	$0, 56(%rbp)
	je	.L155
	movsbl	67(%rbp), %esi
.L156:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L155:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L156
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L156
.L159:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE3522:
	.size	_ZNK7ComplexixEi, .-_ZNK7ComplexixEi
	.align 2
	.p2align 4
	.globl	_ZNK7ComplexeqERKS_
	.type	_ZNK7ComplexeqERKS_, @function
_ZNK7ComplexeqERKS_:
.LFB3523:
	.cfi_startproc
	endbr64
	movsd	8(%rsi), %xmm0
	ucomisd	8(%rdi), %xmm0
	jp	.L163
	jne	.L163
	movsd	24(%rsi), %xmm0
	ucomisd	24(%rdi), %xmm0
	movl	$0, %edx
	setnp	%al
	cmovne	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L163:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE3523:
	.size	_ZNK7ComplexeqERKS_, .-_ZNK7ComplexeqERKS_
	.align 2
	.p2align 4
	.globl	_ZNK7ComplexneERKS_
	.type	_ZNK7ComplexneERKS_, @function
_ZNK7ComplexneERKS_:
.LFB3524:
	.cfi_startproc
	endbr64
	movsd	8(%rsi), %xmm0
	ucomisd	8(%rdi), %xmm0
	jp	.L167
	jne	.L167
	movsd	24(%rsi), %xmm0
	ucomisd	24(%rdi), %xmm0
	movl	$1, %edx
	setp	%al
	cmovne	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L167:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE3524:
	.size	_ZNK7ComplexneERKS_, .-_ZNK7ComplexneERKS_
	.align 2
	.p2align 4
	.globl	_ZNK7Complex3absEv
	.type	_ZNK7Complex3absEv, @function
_ZNK7Complex3absEv:
.LFB3525:
	.cfi_startproc
	endbr64
	movsd	8(%rdi), %xmm0
	movsd	24(%rdi), %xmm1
	pxor	%xmm2, %xmm2
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	movapd	%xmm0, %xmm1
	sqrtsd	%xmm1, %xmm1
	ja	.L174
	movapd	%xmm1, %xmm0
	ret
.L174:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm1, 8(%rsp)
	call	sqrt@PLT
	movsd	8(%rsp), %xmm1
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE3525:
	.size	_ZNK7Complex3absEv, .-_ZNK7Complex3absEv
	.align 2
	.p2align 4
	.globl	_ZNK7Complex3argEv
	.type	_ZNK7Complex3argEv, @function
_ZNK7Complex3argEv:
.LFB3526:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movsd	24(%rdi), %xmm0
	movsd	8(%rdi), %xmm1
	call	atan2@PLT
	mulsd	.LC1(%rip), %xmm0
	divsd	.LC2(%rip), %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3526:
	.size	_ZNK7Complex3argEv, .-_ZNK7Complex3argEv
	.align 2
	.p2align 4
	.globl	_ZN7Complex9conjugateEv
	.type	_ZN7Complex9conjugateEv, @function
_ZN7Complex9conjugateEv:
.LFB3527:
	.cfi_startproc
	endbr64
	pxor	%xmm0, %xmm0
	subsd	24(%rsi), %xmm0
	movsd	8(%rsi), %xmm1
	movq	%rdi, %rax
	movq	$0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	movsd	%xmm0, 24(%rdi)
	ret
	.cfi_endproc
.LFE3527:
	.size	_ZN7Complex9conjugateEv, .-_ZN7Complex9conjugateEv
	.align 2
	.p2align 4
	.globl	_ZNK7ComplexcvdEv
	.type	_ZNK7ComplexcvdEv, @function
_ZNK7ComplexcvdEv:
.LFB3528:
	.cfi_startproc
	endbr64
	movsd	8(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE3528:
	.size	_ZNK7ComplexcvdEv, .-_ZNK7ComplexcvdEv
	.p2align 4
	.globl	_ZrsRSiR7Complex
	.type	_ZrsRSiR7Complex, @function
_ZrsRSiR7Complex:
.LFB3529:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	leaq	8(%rsi), %rsi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZNSi10_M_extractIdEERSiRT_@PLT
	leaq	24(%rbx), %rsi
	movq	%rax, %rdi
	call	_ZNSi10_M_extractIdEERSiRT_@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3529:
	.size	_ZrsRSiR7Complex, .-_ZrsRSiR7Complex
	.p2align 4
	.globl	_ZlsRSoRK7Complex
	.type	_ZlsRSoRK7Complex, @function
_ZlsRSoRK7Complex:
.LFB3530:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm1, %xmm1
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movsd	24(%rsi), %xmm0
	movsd	8(%rsi), %xmm2
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm0
	jp	.L182
	jne	.L182
	ucomisd	%xmm1, %xmm2
	jnp	.L196
.L184:
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	$4, 8(%r12,%rax)
.L188:
	movapd	%xmm2, %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movsd	24(%rbx), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L193
	jne	.L193
.L186:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L197
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L182:
	.cfi_restore_state
	movq	(%r12), %rax
	ucomisd	%xmm1, %xmm2
	movq	-24(%rax), %rdx
	movq	$4, 8(%r12,%rdx)
	jp	.L188
	jne	.L188
.L189:
	movq	-24(%rax), %rcx
	movq	%r12, %rdi
	addq	%r12, %rcx
	orl	$2048, 24(%rcx)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movb	$105, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r12), %rax
	movq	-24(%rax), %rcx
	addq	%r12, %rcx
	andl	$-2049, 24(%rcx)
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L196:
	jne	.L184
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movb	$48, 7(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.L186
.L197:
	call	__stack_chk_fail@PLT
.L193:
	movq	(%r12), %rax
	jmp	.L189
	.cfi_endproc
.LFE3530:
	.size	_ZlsRSoRK7Complex, .-_ZlsRSoRK7Complex
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__ZNK7Complex7displayEv, @function
_GLOBAL__sub_I__ZNK7Complex7displayEv:
.LFB4227:
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
.LFE4227:
	.size	_GLOBAL__sub_I__ZNK7Complex7displayEv, .-_GLOBAL__sub_I__ZNK7Complex7displayEv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZNK7Complex7displayEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1080459264
	.align 8
.LC2:
	.long	1413754136
	.long	1074340347
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
