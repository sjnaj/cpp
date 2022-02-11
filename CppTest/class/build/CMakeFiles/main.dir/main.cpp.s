	.file	"main.cpp"
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
	.section	.text._ZN6EntityD2Ev,"axG",@progbits,_ZN6EntityD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN6EntityD2Ev
	.type	_ZN6EntityD2Ev, @function
_ZN6EntityD2Ev:
.LFB4795:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE4795:
	.size	_ZN6EntityD2Ev, .-_ZN6EntityD2Ev
	.weak	_ZN6EntityD1Ev
	.set	_ZN6EntityD1Ev,_ZN6EntityD2Ev
	.section	.text._ZN6DeriveD2Ev,"axG",@progbits,_ZN6DeriveD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN6DeriveD2Ev
	.type	_ZN6DeriveD2Ev, @function
_ZN6DeriveD2Ev:
.LFB4804:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE4804:
	.size	_ZN6DeriveD2Ev, .-_ZN6DeriveD2Ev
	.weak	_ZN6DeriveD1Ev
	.set	_ZN6DeriveD1Ev,_ZN6DeriveD2Ev
	.section	.text._ZN6EntityD0Ev,"axG",@progbits,_ZN6EntityD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN6EntityD0Ev
	.type	_ZN6EntityD0Ev, @function
_ZN6EntityD0Ev:
.LFB4797:
	.cfi_startproc
	endbr64
	movl	$32, %esi
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE4797:
	.size	_ZN6EntityD0Ev, .-_ZN6EntityD0Ev
	.section	.text._ZN6DeriveD0Ev,"axG",@progbits,_ZN6DeriveD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN6DeriveD0Ev
	.type	_ZN6DeriveD0Ev, @function
_ZN6DeriveD0Ev:
.LFB4806:
	.cfi_startproc
	endbr64
	movl	$48, %esi
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE4806:
	.size	_ZN6DeriveD0Ev, .-_ZN6DeriveD0Ev
	.section	.rodata._ZN6Entity5func2Ev.str1.1,"aMS",@progbits,1
.LC0:
	.string	"func2()"
	.section	.text._ZN6Entity5func2Ev,"axG",@progbits,_ZN6Entity5func2Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN6Entity5func2Ev
	.type	_ZN6Entity5func2Ev, @function
_ZN6Entity5func2Ev:
.LFB4787:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$7, %edx
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L13
	cmpb	$0, 56(%rbp)
	je	.L9
	movsbl	67(%rbp), %esi
.L10:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movq	%rax, %rdi
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L10
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L10
.L13:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4787:
	.size	_ZN6Entity5func2Ev, .-_ZN6Entity5func2Ev
	.section	.rodata._ZN6Entity5func3Ev.str1.1,"aMS",@progbits,1
.LC1:
	.string	"func3()"
	.section	.text._ZN6Entity5func3Ev,"axG",@progbits,_ZN6Entity5func3Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN6Entity5func3Ev
	.type	_ZN6Entity5func3Ev, @function
_ZN6Entity5func3Ev:
.LFB4788:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$7, %edx
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L20
	cmpb	$0, 56(%rbp)
	je	.L16
	movsbl	67(%rbp), %esi
.L17:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movq	%rax, %rdi
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L17
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L17
.L20:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4788:
	.size	_ZN6Entity5func3Ev, .-_ZN6Entity5func3Ev
	.section	.rodata._ZN6Derive4funcEv.str1.1,"aMS",@progbits,1
.LC2:
	.string	"This is Derive"
	.section	.text._ZN6Derive4funcEv,"axG",@progbits,_ZN6Derive4funcEv,comdat
	.align 2
	.p2align 4
	.weak	_ZN6Derive4funcEv
	.type	_ZN6Derive4funcEv, @function
_ZN6Derive4funcEv:
.LFB4791:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzbl	8(%rdi), %esi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	sall	$4, %esi
	sarb	$4, %sil
	movsbl	%sil, %esi
	call	_ZNSolsEi@PLT
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movb	$32, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$14, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r12
	testq	%r12, %r12
	je	.L28
	cmpb	$0, 56(%r12)
	je	.L23
	movsbl	67(%r12), %esi
.L24:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L29
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L24
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L24
.L29:
	call	__stack_chk_fail@PLT
.L28:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4791:
	.size	_ZN6Derive4funcEv, .-_ZN6Derive4funcEv
	.section	.rodata._ZN6Entity4funcEv.str1.1,"aMS",@progbits,1
.LC3:
	.string	"This is Entity"
	.section	.text._ZN6Entity4funcEv,"axG",@progbits,_ZN6Entity4funcEv,comdat
	.align 2
	.p2align 4
	.weak	_ZN6Entity4funcEv
	.type	_ZN6Entity4funcEv, @function
_ZN6Entity4funcEv:
.LFB4785:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzbl	8(%rdi), %esi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	sall	$4, %esi
	sarb	$4, %sil
	movsbl	%sil, %esi
	call	_ZNSolsEi@PLT
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movb	$32, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$14, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r12
	testq	%r12, %r12
	je	.L37
	cmpb	$0, 56(%r12)
	je	.L32
	movsbl	67(%r12), %esi
.L33:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L38
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L33
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L33
.L38:
	call	__stack_chk_fail@PLT
.L37:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4785:
	.size	_ZN6Entity4funcEv, .-_ZN6Entity4funcEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"This is default func"
	.text
	.align 2
	.p2align 4
	.globl	_ZN7Virtual4funcEv
	.type	_ZN7Virtual4funcEv, @function
_ZN7Virtual4funcEv:
.LFB4771:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$20, %edx
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L45
	cmpb	$0, 56(%rbp)
	je	.L41
	movsbl	67(%rbp), %esi
.L42:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movq	%rax, %rdi
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L42
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L42
.L45:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4771:
	.size	_ZN7Virtual4funcEv, .-_ZN7Virtual4funcEv
	.section	.rodata._ZN6EntityC2Ev.str1.1,"aMS",@progbits,1
.LC7:
	.string	"lalala"
	.section	.text._ZN6EntityC2Ev,"axG",@progbits,_ZN6EntityC5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN6EntityC2Ev
	.type	_ZN6EntityC2Ev, @function
_ZN6EntityC2Ev:
.LFB4783:
	.cfi_startproc
	endbr64
	leaq	16+_ZTV6Entity(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$6, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, (%rdi)
	movq	.LC5(%rip), %rax
	movl	$0x3f800000, 24(%rdi)
	movq	%rax, 16(%rdi)
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L52
	cmpb	$0, 56(%rbp)
	je	.L48
	movsbl	67(%rbp), %esi
.L49:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movq	%rax, %rdi
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L49
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L49
.L52:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4783:
	.size	_ZN6EntityC2Ev, .-_ZN6EntityC2Ev
	.weak	_ZN6EntityC1Ev
	.set	_ZN6EntityC1Ev,_ZN6EntityC2Ev
	.section	.text.unlikely,"ax",@progbits
.LCOLDB8:
	.section	.text.startup,"ax",@progbits
.LHOTB8:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4807:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4807
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movabsq	$17179869187, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	16+_ZTV6Derive(%rip), %rbx
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbp
	movq	%rbp, %rdi
.LEHB0:
	call	_ZN6EntityC2Ev
	movzbl	8(%rsp), %eax
	movl	$-6, %esi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rbx, (%rsp)
	andl	$-16, %eax
	movq	%r12, 32(%rsp)
	orl	$10, %eax
	movl	$1, 40(%rsp)
	movb	%al, 8(%rsp)
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$3, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	%rbp, %rdi
	call	_ZN6Derive4funcEv
	movl	$32, %edi
	call	_Znwm@PLT
	movq	%rax, %rdi
	leaq	16+_ZTV6Entity(%rip), %rax
	movq	%rax, (%rdi)
	movq	.LC5(%rip), %rax
	movb	$33, 8(%rdi)
	movq	%rax, 16(%rdi)
	movl	$0x3f800000, 24(%rdi)
	call	_ZN6Entity4funcEv
	movl	$48, %edi
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB1:
	call	_ZN6EntityC2Ev
.LEHE1:
	movzbl	8(%rbp), %eax
	movq	%r12, 32(%rbp)
	movl	$48, %edi
	movq	%rbx, 0(%rbp)
	andl	$-16, %eax
	movl	$0, 40(%rbp)
	orl	$10, %eax
	movb	%al, 8(%rbp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB3:
	call	_ZN6EntityC2Ev
.LEHE3:
	movq	%rbx, (%r12)
	movl	$8, %esi
	movabsq	$25769803781, %rax
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, 32(%r12)
	movzbl	8(%r12), %eax
	movl	$0, 40(%r12)
	andl	$-16, %eax
	orl	$10, %eax
	movb	%al, 8(%r12)
.LEHB4:
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*16(%rax)
	movl	$8, %edi
	movl	$100, n(%rip)
	call	_Znwm@PLT
	movq	%rax, %rdi
	movabsq	$8589934593, %rax
	movq	%rax, (%rdi)
	call	_ZdlPv@PLT
	movl	n(%rip), %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE4:
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*8(%rax)
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*8(%rax)
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L61
	addq	$64, %rsp
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
.L61:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L58:
	endbr64
	movq	%rax, %rbp
	jmp	.L55
.L57:
	endbr64
	movq	%rax, %r12
	jmp	.L54
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4807:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4807-.LLSDACSB4807
.LLSDACSB4807:
	.uleb128 .LEHB0-.LFB4807
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4807
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L57-.LFB4807
	.uleb128 0
	.uleb128 .LEHB2-.LFB4807
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB4807
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L58-.LFB4807
	.uleb128 0
	.uleb128 .LEHB4-.LFB4807
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE4807:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4807
	.type	main.cold, @function
main.cold:
.LFSB4807:
.L55:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	%r12, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L54:
	movq	%rbp, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE4807:
	.section	.gcc_except_table
.LLSDAC4807:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4807-.LLSDACSBC4807
.LLSDACSBC4807:
	.uleb128 .LEHB5-.LCOLDB8
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC4807:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE8:
	.section	.text.startup
.LHOTE8:
	.p2align 4
	.type	_GLOBAL__sub_I__ZN7Virtual4funcEv, @function
_GLOBAL__sub_I__ZN7Virtual4funcEv:
.LFB5589:
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
.LFE5589:
	.size	_GLOBAL__sub_I__ZN7Virtual4funcEv, .-_GLOBAL__sub_I__ZN7Virtual4funcEv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN7Virtual4funcEv
	.weak	_ZTS7Virtual
	.section	.rodata._ZTS7Virtual,"aG",@progbits,_ZTS7Virtual,comdat
	.align 8
	.type	_ZTS7Virtual, @object
	.size	_ZTS7Virtual, 9
_ZTS7Virtual:
	.string	"7Virtual"
	.weak	_ZTI7Virtual
	.section	.data.rel.ro._ZTI7Virtual,"awG",@progbits,_ZTI7Virtual,comdat
	.align 8
	.type	_ZTI7Virtual, @object
	.size	_ZTI7Virtual, 16
_ZTI7Virtual:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS7Virtual
	.weak	_ZTS6Entity
	.section	.rodata._ZTS6Entity,"aG",@progbits,_ZTS6Entity,comdat
	.align 8
	.type	_ZTS6Entity, @object
	.size	_ZTS6Entity, 8
_ZTS6Entity:
	.string	"6Entity"
	.weak	_ZTI6Entity
	.section	.data.rel.ro._ZTI6Entity,"awG",@progbits,_ZTI6Entity,comdat
	.align 8
	.type	_ZTI6Entity, @object
	.size	_ZTI6Entity, 24
_ZTI6Entity:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS6Entity
	.quad	_ZTI7Virtual
	.weak	_ZTS6Derive
	.section	.rodata._ZTS6Derive,"aG",@progbits,_ZTS6Derive,comdat
	.align 8
	.type	_ZTS6Derive, @object
	.size	_ZTS6Derive, 8
_ZTS6Derive:
	.string	"6Derive"
	.weak	_ZTI6Derive
	.section	.data.rel.ro._ZTI6Derive,"awG",@progbits,_ZTI6Derive,comdat
	.align 8
	.type	_ZTI6Derive, @object
	.size	_ZTI6Derive, 24
_ZTI6Derive:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS6Derive
	.quad	_ZTI6Entity
	.weak	_ZTV6Entity
	.section	.data.rel.ro.local._ZTV6Entity,"awG",@progbits,_ZTV6Entity,comdat
	.align 8
	.type	_ZTV6Entity, @object
	.size	_ZTV6Entity, 56
_ZTV6Entity:
	.quad	0
	.quad	_ZTI6Entity
	.quad	_ZN6EntityD1Ev
	.quad	_ZN6EntityD0Ev
	.quad	_ZN6Entity4funcEv
	.quad	_ZN6Entity5func2Ev
	.quad	_ZN6Entity5func3Ev
	.weak	_ZTV6Derive
	.section	.data.rel.ro.local._ZTV6Derive,"awG",@progbits,_ZTV6Derive,comdat
	.align 8
	.type	_ZTV6Derive, @object
	.size	_ZTV6Derive, 56
_ZTV6Derive:
	.quad	0
	.quad	_ZTI6Derive
	.quad	_ZN6DeriveD1Ev
	.quad	_ZN6DeriveD0Ev
	.quad	_ZN6Derive4funcEv
	.quad	_ZN6Entity5func2Ev
	.quad	_ZN6Entity5func3Ev
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	10
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	0
	.long	1072693248
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
