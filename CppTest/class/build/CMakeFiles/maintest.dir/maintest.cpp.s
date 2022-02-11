	.file	"maintest.cpp"
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
	.section	.rodata._ZN5TimerD2Ev.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Timer took "
.LC3:
	.string	"ms"
	.section	.text._ZN5TimerD2Ev,"axG",@progbits,_ZN5TimerD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN5TimerD2Ev
	.type	_ZN5TimerD2Ev, @function
_ZN5TimerD2Ev:
.LFB2952:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2952
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
	movq	%rdi, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movl	$11, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, 8(%rbx)
	subq	(%rbx), %rax
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2ssq	%rax, %xmm0
	divss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rbx)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movss	.LC2(%rip), %xmm0
	mulss	16(%rbx), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	cvtss2sd	%xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	0(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r12
	testq	%r12, %r12
	je	.L9
	cmpb	$0, 56(%r12)
	je	.L5
	movsbl	67(%r12), %esi
.L6:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L6
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L6
.L9:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE2952:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN5TimerD2Ev,"aG",@progbits,_ZN5TimerD5Ev,comdat
.LLSDA2952:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2952-.LLSDACSB2952
.LLSDACSB2952:
.LLSDACSE2952:
	.section	.text._ZN5TimerD2Ev,"axG",@progbits,_ZN5TimerD5Ev,comdat
	.size	_ZN5TimerD2Ev, .-_ZN5TimerD2Ev
	.weak	_ZN5TimerD1Ev
	.set	_ZN5TimerD1Ev,_ZN5TimerD2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"working...\n"
	.text
	.p2align 4
	.globl	_Z6doWorkv
	.type	_Z6doWorkv, @function
_Z6doWorkv:
.LFB2954:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	.LC4(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbx
	.p2align 4,,10
	.p2align 3
.L13:
	movl	$11, %edx
	movq	%rbp, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movdqa	.LC5(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	.p2align 4,,10
	.p2align 3
.L12:
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	nanosleep@PLT
	cmpl	$-1, %eax
	jne	.L13
	call	__errno_location@PLT
	cmpl	$4, (%rax)
	je	.L12
	jmp	.L13
	.cfi_endproc
.LFE2954:
	.size	_Z6doWorkv, .-_Z6doWorkv
	.section	.text.unlikely,"ax",@progbits
.LCOLDB6:
	.section	.text.startup,"ax",@progbits
.LHOTB6:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2957:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2957
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movaps	%xmm0, 16(%rsp)
	movq	%rsp, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movdqa	.LC5(%rip), %xmm0
	movq	%rax, %rbp
	movaps	%xmm0, (%rsp)
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L26:
	call	__errno_location@PLT
	cmpl	$4, (%rax)
	jne	.L18
.L19:
	movq	%rbx, %rsi
	movq	%rbx, %rdi
.LEHB0:
	call	nanosleep@PLT
	cmpl	$-1, %eax
	je	.L26
.L18:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movabsq	$4835703278458516699, %rdx
	subq	%rbp, %rax
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$18, %rdx
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE0:
	leaq	16(%rsp), %rdi
	call	_ZN5TimerD1Ev
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L27
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L27:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L22:
	endbr64
	movq	%rax, %rbp
	jmp	.L20
	.section	.gcc_except_table,"a",@progbits
.LLSDA2957:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2957-.LLSDACSB2957
.LLSDACSB2957:
	.uleb128 .LEHB0-.LFB2957
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L22-.LFB2957
	.uleb128 0
.LLSDACSE2957:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2957
	.type	main.cold, @function
main.cold:
.LFSB2957:
.L20:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	leaq	16(%rsp), %rdi
	call	_ZN5TimerD1Ev
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE2957:
	.section	.gcc_except_table
.LLSDAC2957:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2957-.LLSDACSBC2957
.LLSDACSBC2957:
	.uleb128 .LEHB1-.LCOLDB6
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC2957:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE6:
	.section	.text.startup
.LHOTE6:
	.p2align 4
	.type	_GLOBAL__sub_I__Z6doWorkv, @function
_GLOBAL__sub_I__Z6doWorkv:
.LFB3513:
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
.LFE3513:
	.size	_GLOBAL__sub_I__Z6doWorkv, .-_GLOBAL__sub_I__Z6doWorkv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z6doWorkv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1315859240
	.align 4
.LC2:
	.long	1148846080
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.quad	1
	.quad	0
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
