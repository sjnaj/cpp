	.file	"LinkedListmain.cpp"
# GNU C++14 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D_GNU_SOURCE
# LinkedListmain.cpp -mtune=generic -march=x86-64 -fverbose-asm
# -fasynchronous-unwind-tables -fstack-protector-strong -Wformat
# -Wformat-security -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexceptions -ffp-int-builtin-inexact
# -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fident
# -finline-atomics -fipa-stack-alignment -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstack-clash-protection
# -fstack-protector-strong -fstdarg-opt -fstrict-volatile-bitfields
# -fsync-libcalls -ftrapping-math -ftree-cselim -ftree-forwprop
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZN4NodeC2Ei,"axG",@progbits,_ZN4NodeC5Ei,comdat
	.align 2
	.weak	_ZN4NodeC2Ei
	.type	_ZN4NodeC2Ei, @function
_ZN4NodeC2Ei:
.LFB2961:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, -12(%rbp)	# val, val
# LinkedList.h:23:     Node(int val) : data(val), next(nullptr) {}
	movq	-8(%rbp), %rax	# this, tmp82
	movl	-12(%rbp), %edx	# val, tmp83
	movl	%edx, (%rax)	# tmp83, this_2(D)->data
	movq	-8(%rbp), %rax	# this, tmp84
	movq	$0, 8(%rax)	#, this_2(D)->next
# LinkedList.h:23:     Node(int val) : data(val), next(nullptr) {}
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2961:
	.size	_ZN4NodeC2Ei, .-_ZN4NodeC2Ei
	.weak	_ZN4NodeC1Ei
	.set	_ZN4NodeC1Ei,_ZN4NodeC2Ei
	.section	.text._ZN4NodeC2Ev,"axG",@progbits,_ZN4NodeC5Ev,comdat
	.align 2
	.weak	_ZN4NodeC2Ev
	.type	_ZN4NodeC2Ev, @function
_ZN4NodeC2Ev:
.LFB2967:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# LinkedList.h:25:     Node() : data(0), next(nullptr) {}
	movq	-8(%rbp), %rax	# this, tmp82
	movl	$0, (%rax)	#, this_2(D)->data
	movq	-8(%rbp), %rax	# this, tmp83
	movq	$0, 8(%rax)	#, this_2(D)->next
# LinkedList.h:25:     Node() : data(0), next(nullptr) {}
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2967:
	.size	_ZN4NodeC2Ev, .-_ZN4NodeC2Ev
	.weak	_ZN4NodeC1Ev
	.set	_ZN4NodeC1Ev,_ZN4NodeC2Ev
	.section	.text._ZN4NodeC2EiPS_,"axG",@progbits,_ZN4NodeC5EiPS_,comdat
	.align 2
	.weak	_ZN4NodeC2EiPS_
	.type	_ZN4NodeC2EiPS_, @function
_ZN4NodeC2EiPS_:
.LFB2970:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, -12(%rbp)	# val, val
	movq	%rdx, -24(%rbp)	# ptr, ptr
# LinkedList.h:26:     Node(int val, Node *ptr) : data(val), next(ptr) {}
	movq	-8(%rbp), %rax	# this, tmp82
	movl	-12(%rbp), %edx	# val, tmp83
	movl	%edx, (%rax)	# tmp83, this_2(D)->data
	movq	-8(%rbp), %rax	# this, tmp84
	movq	-24(%rbp), %rdx	# ptr, tmp85
	movq	%rdx, 8(%rax)	# tmp85, this_2(D)->next
# LinkedList.h:26:     Node(int val, Node *ptr) : data(val), next(ptr) {}
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2970:
	.size	_ZN4NodeC2EiPS_, .-_ZN4NodeC2EiPS_
	.weak	_ZN4NodeC1EiPS_
	.set	_ZN4NodeC1EiPS_,_ZN4NodeC2EiPS_
	.text
	.globl	_Z9SListFreeR5SList
	.type	_Z9SListFreeR5SList, @function
_Z9SListFreeR5SList:
.LFB2972:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# SL, SL
# LinkedList.h:91:     delete[] SL.Elem;
	movq	-8(%rbp), %rax	# SL, tmp84
	movq	(%rax), %rax	# SL_5(D)->Elem, _1
# LinkedList.h:91:     delete[] SL.Elem;
	testq	%rax, %rax	# _1
	je	.L6	#,
# LinkedList.h:91:     delete[] SL.Elem;
	movq	-8(%rbp), %rax	# SL, tmp85
	movq	(%rax), %rax	# SL_5(D)->Elem, _2
	movq	%rax, %rdi	# _2,
	call	_ZdaPv@PLT	#
.L6:
# LinkedList.h:92: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2972:
	.size	_Z9SListFreeR5SList, .-_Z9SListFreeR5SList
	.section	.text._ZN8TermNodeC2Ev,"axG",@progbits,_ZN8TermNodeC5Ev,comdat
	.align 2
	.weak	_ZN8TermNodeC2Ev
	.type	_ZN8TermNodeC2Ev, @function
_ZN8TermNodeC2Ev:
.LFB2974:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# LinkedList.h:106:     TermNode() : coef(0), exp(0), next(nullptr) {}
	movq	-8(%rbp), %rax	# this, tmp82
	pxor	%xmm0, %xmm0	# tmp83
	movsd	%xmm0, (%rax)	# tmp83, this_2(D)->coef
	movq	-8(%rbp), %rax	# this, tmp84
	movl	$0, 8(%rax)	#, this_2(D)->exp
	movq	-8(%rbp), %rax	# this, tmp85
	movq	$0, 16(%rax)	#, this_2(D)->next
# LinkedList.h:106:     TermNode() : coef(0), exp(0), next(nullptr) {}
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2974:
	.size	_ZN8TermNodeC2Ev, .-_ZN8TermNodeC2Ev
	.weak	_ZN8TermNodeC1Ev
	.set	_ZN8TermNodeC1Ev,_ZN8TermNodeC2Ev
	.section	.text._ZN8TermNodeC2Edi,"axG",@progbits,_ZN8TermNodeC5Edi,comdat
	.align 2
	.weak	_ZN8TermNodeC2Edi
	.type	_ZN8TermNodeC2Edi, @function
_ZN8TermNodeC2Edi:
.LFB2980:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movsd	%xmm0, -16(%rbp)	# pcoef, pcoef
	movl	%esi, -20(%rbp)	# pexp, pexp
# LinkedList.h:108:     TermNode(double pcoef, int pexp) : coef(pcoef), exp(pexp), next(nullptr) {}
	movq	-8(%rbp), %rax	# this, tmp82
	movsd	-16(%rbp), %xmm0	# pcoef, tmp83
	movsd	%xmm0, (%rax)	# tmp83, this_2(D)->coef
	movq	-8(%rbp), %rax	# this, tmp84
	movl	-20(%rbp), %edx	# pexp, tmp85
	movl	%edx, 8(%rax)	# tmp85, this_2(D)->exp
	movq	-8(%rbp), %rax	# this, tmp86
	movq	$0, 16(%rax)	#, this_2(D)->next
# LinkedList.h:108:     TermNode(double pcoef, int pexp) : coef(pcoef), exp(pexp), next(nullptr) {}
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2980:
	.size	_ZN8TermNodeC2Edi, .-_ZN8TermNodeC2Edi
	.weak	_ZN8TermNodeC1Edi
	.set	_ZN8TermNodeC1Edi,_ZN8TermNodeC2Edi
	.section	.text._ZN8TermNodeC2EdiPS_,"axG",@progbits,_ZN8TermNodeC5EdiPS_,comdat
	.align 2
	.weak	_ZN8TermNodeC2EdiPS_
	.type	_ZN8TermNodeC2EdiPS_, @function
_ZN8TermNodeC2EdiPS_:
.LFB2983:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movsd	%xmm0, -16(%rbp)	# pcoef, pcoef
	movl	%esi, -20(%rbp)	# pexp, pexp
	movq	%rdx, -32(%rbp)	# pnext, pnext
# LinkedList.h:109:     TermNode(double pcoef, int pexp, TermNode *pnext) : coef(pcoef), exp(pexp), next(pnext) {}
	movq	-8(%rbp), %rax	# this, tmp82
	movsd	-16(%rbp), %xmm0	# pcoef, tmp83
	movsd	%xmm0, (%rax)	# tmp83, this_2(D)->coef
	movq	-8(%rbp), %rax	# this, tmp84
	movl	-20(%rbp), %edx	# pexp, tmp85
	movl	%edx, 8(%rax)	# tmp85, this_2(D)->exp
	movq	-8(%rbp), %rax	# this, tmp86
	movq	-32(%rbp), %rdx	# pnext, tmp87
	movq	%rdx, 16(%rax)	# tmp87, this_2(D)->next
# LinkedList.h:109:     TermNode(double pcoef, int pexp, TermNode *pnext) : coef(pcoef), exp(pexp), next(pnext) {}
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2983:
	.size	_ZN8TermNodeC2EdiPS_, .-_ZN8TermNodeC2EdiPS_
	.weak	_ZN8TermNodeC1EdiPS_
	.set	_ZN8TermNodeC1EdiPS_,_ZN8TermNodeC2EdiPS_
	.section	.rodata
.LC1:
	.string	"Memory allocation failed"
	.text
	.globl	_Z8InitListRP4Node
	.type	_Z8InitListRP4Node, @function
_Z8InitListRP4Node:
.LFB2985:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# Head, Head
# LinkedList.cpp:12:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	movl	$16, %edi	#,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp87, _1
# LinkedList.cpp:12:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	movq	-8(%rbp), %rax	# Head, tmp88
	movq	%rdx, (%rax)	# _1, *Head_7(D)
# LinkedList.cpp:12:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	movq	-8(%rbp), %rax	# Head, tmp89
	movq	(%rax), %rax	# *Head_7(D), _2
# LinkedList.cpp:12:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	testq	%rax, %rax	# _2
	sete	%al	#, retval.0_9
# LinkedList.cpp:12:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	testb	%al, %al	# retval.0_9
	je	.L11	#,
# LinkedList.cpp:14:         cout << "Memory allocation failed" << endl;
	leaq	.LC1(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _3
# LinkedList.cpp:14:         cout << "Memory allocation failed" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	movq	%rdx, %rdi	# _3,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:15:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L11:
# LinkedList.cpp:17:     Head->next = NULL;
	movq	-8(%rbp), %rax	# Head, tmp91
	movq	(%rax), %rax	# *Head_7(D), _4
# LinkedList.cpp:17:     Head->next = NULL;
	movq	$0, 8(%rax)	#, _4->next
# LinkedList.cpp:18: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2985:
	.size	_Z8InitListRP4Node, .-_Z8InitListRP4Node
	.section	.rodata
.LC2:
	.string	"Loc error"
	.text
	.globl	_Z9FindByLocRP4Nodei
	.type	_Z9FindByLocRP4Nodei, @function
_Z9FindByLocRP4Nodei:
.LFB2986:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# loc, loc
# LinkedList.cpp:21:     LinkList p = Head;
	movq	-24(%rbp), %rax	# Head, tmp85
	movq	(%rax), %rax	# *Head_6(D), tmp86
	movq	%rax, -8(%rbp)	# tmp86, p
# LinkedList.cpp:23:     for (i = 0; i < loc && p; i++)
	movl	$0, -12(%rbp)	#, i
.L14:
# LinkedList.cpp:23:     for (i = 0; i < loc && p; i++)
	movl	-12(%rbp), %eax	# i, tmp87
	cmpl	-28(%rbp), %eax	# loc, tmp87
	jge	.L13	#,
# LinkedList.cpp:23:     for (i = 0; i < loc && p; i++)
	cmpq	$0, -8(%rbp)	#, p
	je	.L13	#,
# LinkedList.cpp:25:         p = p->next;
	movq	-8(%rbp), %rax	# p, tmp88
	movq	8(%rax), %rax	# p_2->next, tmp89
	movq	%rax, -8(%rbp)	# tmp89, p
# LinkedList.cpp:23:     for (i = 0; i < loc && p; i++)
	addl	$1, -12(%rbp)	#, i
	jmp	.L14	#
.L13:
# LinkedList.cpp:27:     if (!p)
	cmpq	$0, -8(%rbp)	#, p
	jne	.L15	#,
# LinkedList.cpp:28:         cout << "Loc error" << endl;
	leaq	.LC2(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _1
# LinkedList.cpp:28:         cout << "Loc error" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	movq	%rdx, %rdi	# _1,
	call	_ZNSolsEPFRSoS_E@PLT	#
.L15:
# LinkedList.cpp:29:     return p;
	movq	-8(%rbp), %rax	# p, _15
# LinkedList.cpp:30: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2986:
	.size	_Z9FindByLocRP4Nodei, .-_Z9FindByLocRP4Nodei
	.globl	_Z9FindByValRP4Nodei
	.type	_Z9FindByValRP4Nodei, @function
_Z9FindByValRP4Nodei:
.LFB2987:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# x, x
# LinkedList.cpp:33:     LinkList p = Head->next;
	movq	-24(%rbp), %rax	# Head, tmp86
	movq	(%rax), %rax	# *Head_5(D), _1
# LinkedList.cpp:33:     LinkList p = Head->next;
	movq	8(%rax), %rax	# _1->next, tmp87
	movq	%rax, -8(%rbp)	# tmp87, p
.L19:
# LinkedList.cpp:34:     while (p && p->data != x)
	cmpq	$0, -8(%rbp)	#, p
	je	.L18	#,
# LinkedList.cpp:34:     while (p && p->data != x)
	movq	-8(%rbp), %rax	# p, tmp88
	movl	(%rax), %eax	# p_3->data, _2
# LinkedList.cpp:34:     while (p && p->data != x)
	cmpl	%eax, -28(%rbp)	# _2, x
	je	.L18	#,
# LinkedList.cpp:35:         p = p->next;
	movq	-8(%rbp), %rax	# p, tmp89
	movq	8(%rax), %rax	# p_3->next, tmp90
	movq	%rax, -8(%rbp)	# tmp90, p
# LinkedList.cpp:34:     while (p && p->data != x)
	jmp	.L19	#
.L18:
# LinkedList.cpp:36:     return p;
	movq	-8(%rbp), %rax	# p, _9
# LinkedList.cpp:37: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2987:
	.size	_Z9FindByValRP4Nodei, .-_Z9FindByValRP4Nodei
	.section	.rodata
.LC3:
	.string	"Memory allocation error"
.LC4:
	.string	"Insert sucessful"
	.text
	.globl	_Z6InsertRP4Nodeii
	.type	_Z6InsertRP4Nodeii, @function
_Z6InsertRP4Nodeii:
.LFB2988:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# loc, loc
	movl	%edx, -32(%rbp)	# x, x
# LinkedList.cpp:40:     LinkList p = FindByLoc(Head, loc - 1);
	movl	-28(%rbp), %eax	# loc, tmp90
	leal	-1(%rax), %edx	#, _1
	movq	-24(%rbp), %rax	# Head, tmp91
	movl	%edx, %esi	# _1,
	movq	%rax, %rdi	# tmp91,
	call	_Z9FindByLocRP4Nodei	#
	movq	%rax, -16(%rbp)	# _12, p
# LinkedList.cpp:41:     if (!p)
	cmpq	$0, -16(%rbp)	#, p
	jne	.L22	#,
# LinkedList.cpp:43:         cout << "Loc error" << endl;
	leaq	.LC2(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _2
# LinkedList.cpp:43:         cout << "Loc error" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	movq	%rdx, %rdi	# _2,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:44:         return false;
	movl	$0, %eax	#, _6
	jmp	.L23	#
.L22:
# LinkedList.cpp:46:     LinkList cur = (LinkList)malloc(sizeof(LinkNode));
	movl	$16, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp93, cur
# LinkedList.cpp:47:     if (!cur)
	cmpq	$0, -8(%rbp)	#, cur
	jne	.L24	#,
# LinkedList.cpp:49:         cout << "Memory allocation error" << endl;
	leaq	.LC3(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _3
# LinkedList.cpp:49:         cout << "Memory allocation error" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	movq	%rdx, %rdi	# _3,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:50:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L24:
# LinkedList.cpp:52:     cur->next = p->next;
	movq	-16(%rbp), %rax	# p, tmp95
	movq	8(%rax), %rdx	# p_13->next, _4
# LinkedList.cpp:52:     cur->next = p->next;
	movq	-8(%rbp), %rax	# cur, tmp96
	movq	%rdx, 8(%rax)	# _4, cur_15->next
# LinkedList.cpp:53:     cur->data = x;
	movq	-8(%rbp), %rax	# cur, tmp97
	movl	-32(%rbp), %edx	# x, tmp98
	movl	%edx, (%rax)	# tmp98, cur_15->data
# LinkedList.cpp:54:     p->next = cur;
	movq	-16(%rbp), %rax	# p, tmp99
	movq	-8(%rbp), %rdx	# cur, tmp100
	movq	%rdx, 8(%rax)	# tmp100, p_13->next
# LinkedList.cpp:55:     cout << "Insert sucessful" << endl;
	leaq	.LC4(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _5
# LinkedList.cpp:55:     cout << "Insert sucessful" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	movq	%rdx, %rdi	# _5,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:56:     return true;
	movl	$1, %eax	#, _6
.L23:
# LinkedList.cpp:57: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2988:
	.size	_Z6InsertRP4Nodeii, .-_Z6InsertRP4Nodeii
	.globl	_Z7Insert2RP4Nodeii
	.type	_Z7Insert2RP4Nodeii, @function
_Z7Insert2RP4Nodeii:
.LFB2989:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# Head, Head
	movl	%esi, -60(%rbp)	# loc, loc
	movl	%edx, -64(%rbp)	# x, x
# LinkedList.cpp:60:     LinkList *pcur = &Head, p = new LinkNode(x);
	movq	-56(%rbp), %rax	# Head, tmp91
	movq	%rax, -32(%rbp)	# tmp91, pcur
# LinkedList.cpp:60:     LinkList *pcur = &Head, p = new LinkNode(x);
	movl	$16, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp92, _15
	movl	-64(%rbp), %eax	# x, tmp93
	movl	%eax, %esi	# tmp93,
	movq	%rbx, %rdi	# _15,
	call	_ZN4NodeC1Ei	#
	movq	%rbx, -24(%rbp)	# _15, p
# LinkedList.cpp:61:     if (!p)
	cmpq	$0, -24(%rbp)	#, p
	jne	.L26	#,
# LinkedList.cpp:63:         cout << "Memory allocation error" << endl;
	leaq	.LC3(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _1
# LinkedList.cpp:63:         cout << "Memory allocation error" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	movq	%rdx, %rdi	# _1,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:64:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L26:
# LinkedList.cpp:66:     for (int i = 0; (*pcur) && (i < loc - 1); i++)
	movl	$0, -36(%rbp)	#, i
.L28:
# LinkedList.cpp:66:     for (int i = 0; (*pcur) && (i < loc - 1); i++)
	movq	-32(%rbp), %rax	# pcur, tmp95
	movq	(%rax), %rax	# *pcur_7, _2
# LinkedList.cpp:66:     for (int i = 0; (*pcur) && (i < loc - 1); i++)
	testq	%rax, %rax	# _2
	je	.L27	#,
# LinkedList.cpp:66:     for (int i = 0; (*pcur) && (i < loc - 1); i++)
	movl	-60(%rbp), %eax	# loc, tmp96
	subl	$1, %eax	#, _3
# LinkedList.cpp:66:     for (int i = 0; (*pcur) && (i < loc - 1); i++)
	cmpl	%eax, -36(%rbp)	# _3, i
	jge	.L27	#,
# LinkedList.cpp:67:         pcur = &(*pcur)->next;
	movq	-32(%rbp), %rax	# pcur, tmp97
	movq	(%rax), %rax	# *pcur_7, _4
# LinkedList.cpp:67:         pcur = &(*pcur)->next;
	addq	$8, %rax	#, tmp98
	movq	%rax, -32(%rbp)	# tmp98, pcur
# LinkedList.cpp:66:     for (int i = 0; (*pcur) && (i < loc - 1); i++)
	addl	$1, -36(%rbp)	#, i
	jmp	.L28	#
.L27:
# LinkedList.cpp:68:     if (!(*pcur) || loc < 1)
	movq	-32(%rbp), %rax	# pcur, tmp99
	movq	(%rax), %rax	# *pcur_7, _5
# LinkedList.cpp:68:     if (!(*pcur) || loc < 1)
	testq	%rax, %rax	# _5
	je	.L29	#,
# LinkedList.cpp:68:     if (!(*pcur) || loc < 1)
	cmpl	$0, -60(%rbp)	#, loc
	jg	.L30	#,
.L29:
# LinkedList.cpp:69:         return false;
	movl	$0, %eax	#, _9
	jmp	.L31	#
.L30:
# LinkedList.cpp:70:     p->next = *pcur;
	movq	-32(%rbp), %rax	# pcur, tmp100
	movq	(%rax), %rdx	# *pcur_7, _6
# LinkedList.cpp:70:     p->next = *pcur;
	movq	-24(%rbp), %rax	# p, tmp101
	movq	%rdx, 8(%rax)	# _6, p_19->next
# LinkedList.cpp:71:     *pcur = p;
	movq	-32(%rbp), %rax	# pcur, tmp102
	movq	-24(%rbp), %rdx	# p, tmp103
	movq	%rdx, (%rax)	# tmp103, *pcur_7
# LinkedList.cpp:72:     return true;
	movl	$1, %eax	#, _9
.L31:
# LinkedList.cpp:73: }
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2989:
	.size	_Z7Insert2RP4Nodeii, .-_Z7Insert2RP4Nodeii
	.section	.rodata
.LC5:
	.string	"Please input "
.LC6:
	.string	" data in a line"
	.text
	.globl	_Z7InitValRP4Nodei
	.type	_Z7InitValRP4Nodei, @function
_Z7InitValRP4Nodei:
.LFB2990:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# Head, Head
	movl	%esi, -44(%rbp)	# sum, sum
# LinkedList.cpp:76:     InitList(Head);
	movq	-40(%rbp), %rax	# Head, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_Z8InitListRP4Node	#
# LinkedList.cpp:77:     LinkList pred = Head, cur = NULL;
	movq	-40(%rbp), %rax	# Head, tmp88
	movq	(%rax), %rax	# *Head_10(D), tmp89
	movq	%rax, -16(%rbp)	# tmp89, pred
# LinkedList.cpp:77:     LinkList pred = Head, cur = NULL;
	movq	$0, -8(%rbp)	#, cur
# LinkedList.cpp:78:     cout << "Please input " << sum << " data in a line" << endl;
	leaq	.LC5(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _1
# LinkedList.cpp:78:     cout << "Please input " << sum << " data in a line" << endl;
	movl	-44(%rbp), %eax	# sum, tmp90
	movl	%eax, %esi	# tmp90,
	movq	%rdx, %rdi	# _1,
	call	_ZNSolsEi@PLT	#
	leaq	.LC6(%rip), %rsi	#,
	movq	%rax, %rdi	# _2,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _3
# LinkedList.cpp:78:     cout << "Please input " << sum << " data in a line" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	movq	%rdx, %rdi	# _3,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:79:     for (int i = 0; i < sum; i++)
	movl	$0, -20(%rbp)	#, i
.L35:
# LinkedList.cpp:79:     for (int i = 0; i < sum; i++)
	movl	-20(%rbp), %eax	# i, tmp92
	cmpl	-44(%rbp), %eax	# sum, tmp92
	jge	.L33	#,
# LinkedList.cpp:82:         cur = (LinkList)malloc(sizeof(LinkNode));
	movl	$16, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp93, cur
# LinkedList.cpp:83:         if (!cur)
	cmpq	$0, -8(%rbp)	#, cur
	jne	.L34	#,
# LinkedList.cpp:85:             cout << "Memory allocation failed" << endl;
	leaq	.LC1(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _4
# LinkedList.cpp:85:             cout << "Memory allocation failed" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	movq	%rdx, %rdi	# _4,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:86:             exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L34:
# LinkedList.cpp:89:         pred->next = cur;
	movq	-16(%rbp), %rax	# pred, tmp95
	movq	-8(%rbp), %rdx	# cur, tmp96
	movq	%rdx, 8(%rax)	# tmp96, pred_6->next
# LinkedList.cpp:90:         cin >> cur->data;
	movq	-8(%rbp), %rax	# cur, _5
	movq	%rax, %rsi	# _5,
	leaq	_ZSt3cin(%rip), %rdi	#,
	call	_ZNSirsERi@PLT	#
# LinkedList.cpp:92:         pred = cur;
	movq	-8(%rbp), %rax	# cur, tmp97
	movq	%rax, -16(%rbp)	# tmp97, pred
# LinkedList.cpp:79:     for (int i = 0; i < sum; i++)
	addl	$1, -20(%rbp)	#, i
	jmp	.L35	#
.L33:
# LinkedList.cpp:94:     pred->next = NULL; //最后再加NULL，不需要每步都加一次,用构造函数初始化更方便
	movq	-16(%rbp), %rax	# pred, tmp98
	movq	$0, 8(%rax)	#, pred_6->next
# LinkedList.cpp:95: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2990:
	.size	_Z7InitValRP4Nodei, .-_Z7InitValRP4Nodei
	.globl	_Z8InitVal2RP4Nodei
	.type	_Z8InitVal2RP4Nodei, @function
_Z8InitVal2RP4Nodei:
.LFB2991:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# sum, sum
# LinkedList.cpp:98:     InitList(Head);
	movq	-24(%rbp), %rax	# Head, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_Z8InitListRP4Node	#
# LinkedList.cpp:99:     LinkList cur = NULL;
	movq	$0, -8(%rbp)	#, cur
# LinkedList.cpp:100:     for (int i = 0; i < sum; i++)
	movl	$0, -12(%rbp)	#, i
.L39:
# LinkedList.cpp:100:     for (int i = 0; i < sum; i++)
	movl	-12(%rbp), %eax	# i, tmp88
	cmpl	-28(%rbp), %eax	# sum, tmp88
	jge	.L40	#,
# LinkedList.cpp:102:         cur = (LinkList)malloc(sizeof(LinkNode));
	movl	$16, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp89, cur
# LinkedList.cpp:103:         if (!cur)
	cmpq	$0, -8(%rbp)	#, cur
	jne	.L38	#,
# LinkedList.cpp:105:             cout << "Memory allocation failed" << endl;
	leaq	.LC1(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _1
# LinkedList.cpp:105:             cout << "Memory allocation failed" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	movq	%rdx, %rdi	# _1,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:106:             exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L38:
# LinkedList.cpp:108:         cur->next = Head->next;
	movq	-24(%rbp), %rax	# Head, tmp91
	movq	(%rax), %rax	# *Head_9(D), _2
# LinkedList.cpp:108:         cur->next = Head->next;
	movq	8(%rax), %rdx	# _2->next, _3
# LinkedList.cpp:108:         cur->next = Head->next;
	movq	-8(%rbp), %rax	# cur, tmp92
	movq	%rdx, 8(%rax)	# _3, cur_15->next
# LinkedList.cpp:109:         cin >> cur->data;
	movq	-8(%rbp), %rax	# cur, _4
	movq	%rax, %rsi	# _4,
	leaq	_ZSt3cin(%rip), %rdi	#,
	call	_ZNSirsERi@PLT	#
# LinkedList.cpp:110:         Head->next = cur;
	movq	-24(%rbp), %rax	# Head, tmp93
	movq	(%rax), %rax	# *Head_9(D), _5
# LinkedList.cpp:110:         Head->next = cur;
	movq	-8(%rbp), %rdx	# cur, tmp94
	movq	%rdx, 8(%rax)	# tmp94, _5->next
# LinkedList.cpp:100:     for (int i = 0; i < sum; i++)
	addl	$1, -12(%rbp)	#, i
	jmp	.L39	#
.L40:
# LinkedList.cpp:112: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2991:
	.size	_Z8InitVal2RP4Nodei, .-_Z8InitVal2RP4Nodei
	.section	.rodata
.LC7:
	.string	"Please enter "
.LC8:
	.string	" datas"
	.text
	.globl	_Z20InitValWithoutHeaderRP4Nodei
	.type	_Z20InitValWithoutHeaderRP4Nodei, @function
_Z20InitValWithoutHeaderRP4Nodei:
.LFB2992:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# Head, Head
	movl	%esi, -44(%rbp)	# num, num
# LinkedList.cpp:115:     LinkList *pcur = &Head;
	movq	-40(%rbp), %rax	# Head, tmp90
	movq	%rax, -32(%rbp)	# tmp90, pcur
# LinkedList.cpp:116:     cout << "Please enter " << num << " datas" << endl;
	leaq	.LC7(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _1
# LinkedList.cpp:116:     cout << "Please enter " << num << " datas" << endl;
	movl	-44(%rbp), %eax	# num, tmp91
	movl	%eax, %esi	# tmp91,
	movq	%rdx, %rdi	# _1,
	call	_ZNSolsEi@PLT	#
	leaq	.LC8(%rip), %rsi	#,
	movq	%rax, %rdi	# _2,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _3
# LinkedList.cpp:116:     cout << "Please enter " << num << " datas" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	movq	%rdx, %rdi	# _3,
	call	_ZNSolsEPFRSoS_E@PLT	#
.L44:
# LinkedList.cpp:117:     while (num--)
	movl	-44(%rbp), %eax	# num, num.2_4
	leal	-1(%rax), %edx	#, tmp93
	movl	%edx, -44(%rbp)	# tmp93, num
	testl	%eax, %eax	# num.2_4
	setne	%al	#, retval.1_22
	testb	%al, %al	# retval.1_22
	je	.L42	#,
# LinkedList.cpp:119:         LinkList cur = new LinkNode;
	movl	$16, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp94, _25
	movq	%rbx, %rdi	# _25,
	call	_ZN4NodeC1Ev	#
	movq	%rbx, -24(%rbp)	# _25, cur
# LinkedList.cpp:120:         if (!cur)
	cmpq	$0, -24(%rbp)	#, cur
	jne	.L43	#,
# LinkedList.cpp:122:             cout << "Memory allocation failed" << endl;
	leaq	.LC1(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _5
# LinkedList.cpp:122:             cout << "Memory allocation failed" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	movq	%rdx, %rdi	# _5,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:123:             exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L43:
# LinkedList.cpp:125:         cin >> cur->data;
	movq	-24(%rbp), %rax	# cur, _6
	movq	%rax, %rsi	# _6,
	leaq	_ZSt3cin(%rip), %rdi	#,
	call	_ZNSirsERi@PLT	#
# LinkedList.cpp:126:         *pcur = cur;
	movq	-32(%rbp), %rax	# pcur, tmp96
	movq	-24(%rbp), %rdx	# cur, tmp97
	movq	%rdx, (%rax)	# tmp97, *pcur_8
# LinkedList.cpp:127:         pcur = &cur->next;
	movq	-24(%rbp), %rax	# cur, tmp101
	addq	$8, %rax	#, tmp100
	movq	%rax, -32(%rbp)	# tmp100, pcur
# LinkedList.cpp:117:     while (num--)
	jmp	.L44	#
.L42:
# LinkedList.cpp:129:     *pcur = nullptr;
	movq	-32(%rbp), %rax	# pcur, tmp102
	movq	$0, (%rax)	#, *pcur_8
# LinkedList.cpp:130: }
	nop	
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2992:
	.size	_Z20InitValWithoutHeaderRP4Nodei, .-_Z20InitValWithoutHeaderRP4Nodei
	.section	.rodata
.LC9:
	.string	"Delete sucessful"
	.text
	.globl	_Z11RemoveByLocRP4Nodei
	.type	_Z11RemoveByLocRP4Nodei, @function
_Z11RemoveByLocRP4Nodei:
.LFB2993:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# loc, loc
# LinkedList.cpp:135:     LinkList p = FindByLoc(Head, loc - 1), q;
	movl	-28(%rbp), %eax	# loc, tmp90
	leal	-1(%rax), %edx	#, _1
	movq	-24(%rbp), %rax	# Head, tmp91
	movl	%edx, %esi	# _1,
	movq	%rax, %rdi	# tmp91,
	call	_Z9FindByLocRP4Nodei	#
	movq	%rax, -16(%rbp)	# _12, p
# LinkedList.cpp:136:     if (p && p->next)
	cmpq	$0, -16(%rbp)	#, p
	je	.L46	#,
# LinkedList.cpp:136:     if (p && p->next)
	movq	-16(%rbp), %rax	# p, tmp92
	movq	8(%rax), %rax	# p_13->next, _2
# LinkedList.cpp:136:     if (p && p->next)
	testq	%rax, %rax	# _2
	je	.L46	#,
# LinkedList.cpp:138:         q = p->next;
	movq	-16(%rbp), %rax	# p, tmp93
	movq	8(%rax), %rax	# p_13->next, tmp94
	movq	%rax, -8(%rbp)	# tmp94, q
# LinkedList.cpp:139:         p->next = q->next;
	movq	-8(%rbp), %rax	# q, tmp95
	movq	8(%rax), %rdx	# q_14->next, _3
# LinkedList.cpp:139:         p->next = q->next;
	movq	-16(%rbp), %rax	# p, tmp96
	movq	%rdx, 8(%rax)	# _3, p_13->next
# LinkedList.cpp:140:         free(q); //释放结点；
	movq	-8(%rbp), %rax	# q, tmp97
	movq	%rax, %rdi	# tmp97,
	call	free@PLT	#
# LinkedList.cpp:141:         cout << "Delete sucessful" << endl;
	leaq	.LC9(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _4
# LinkedList.cpp:141:         cout << "Delete sucessful" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	movq	%rdx, %rdi	# _4,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:142:         return true;
	movl	$1, %eax	#, _6
	jmp	.L47	#
.L46:
# LinkedList.cpp:146:         cout << "Loc error" << endl;
	leaq	.LC2(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _5
# LinkedList.cpp:146:         cout << "Loc error" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	movq	%rdx, %rdi	# _5,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:147:         return false;
	movl	$0, %eax	#, _6
.L47:
# LinkedList.cpp:149: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2993:
	.size	_Z11RemoveByLocRP4Nodei, .-_Z11RemoveByLocRP4Nodei
	.globl	_Z5PrintRP4Nodei
	.type	_Z5PrintRP4Nodei, @function
_Z5PrintRP4Nodei:
.LFB2994:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# flag, flag
# LinkedList.cpp:152:     LinkList p = flag ? Head->next : Head;
	cmpl	$0, -28(%rbp)	#, flag
	je	.L49	#,
# LinkedList.cpp:152:     LinkList p = flag ? Head->next : Head;
	movq	-24(%rbp), %rax	# Head, tmp86
	movq	(%rax), %rax	# *Head_9(D), _1
# LinkedList.cpp:152:     LinkList p = flag ? Head->next : Head;
	movq	8(%rax), %rax	# _1->next, iftmp.3_5
	jmp	.L50	#
.L49:
# LinkedList.cpp:152:     LinkList p = flag ? Head->next : Head;
	movq	-24(%rbp), %rax	# Head, tmp87
	movq	(%rax), %rax	# *Head_9(D), iftmp.3_5
.L50:
# LinkedList.cpp:152:     LinkList p = flag ? Head->next : Head;
	movq	%rax, -8(%rbp)	# iftmp.3_5, p
.L52:
# LinkedList.cpp:153:     while (p)
	cmpq	$0, -8(%rbp)	#, p
	je	.L51	#,
# LinkedList.cpp:155:         cout << p->data << ' ';
	movq	-8(%rbp), %rax	# p, tmp88
	movl	(%rax), %eax	# p_4->data, _2
	movl	%eax, %esi	# _2,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEi@PLT	#
	movl	$32, %esi	#,
	movq	%rax, %rdi	# _3,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
# LinkedList.cpp:156:         p = p->next;
	movq	-8(%rbp), %rax	# p, tmp89
	movq	8(%rax), %rax	# p_4->next, tmp90
	movq	%rax, -8(%rbp)	# tmp90, p
# LinkedList.cpp:153:     while (p)
	jmp	.L52	#
.L51:
# LinkedList.cpp:158:     cout << '\n';
	movl	$10, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
# LinkedList.cpp:159: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2994:
	.size	_Z5PrintRP4Nodei, .-_Z5PrintRP4Nodei
	.globl	_Z11RemoveByValRP4Nodei
	.type	_Z11RemoveByValRP4Nodei, @function
_Z11RemoveByValRP4Nodei:
.LFB2995:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# Head, Head
	movl	%esi, -44(%rbp)	# x, x
# LinkedList.cpp:162:     LinkList p = Head, q;
	movq	-40(%rbp), %rax	# Head, tmp88
	movq	(%rax), %rax	# *Head_12(D), tmp89
	movq	%rax, -16(%rbp)	# tmp89, p
# LinkedList.cpp:163:     int flag = 0;
	movl	$0, -20(%rbp)	#, flag
.L56:
# LinkedList.cpp:164:     while (p && p->next)
	cmpq	$0, -16(%rbp)	#, p
	je	.L54	#,
# LinkedList.cpp:164:     while (p && p->next)
	movq	-16(%rbp), %rax	# p, tmp90
	movq	8(%rax), %rax	# p_5->next, _1
# LinkedList.cpp:164:     while (p && p->next)
	testq	%rax, %rax	# _1
	je	.L54	#,
# LinkedList.cpp:166:         if (p->next->data == x)
	movq	-16(%rbp), %rax	# p, tmp91
	movq	8(%rax), %rax	# p_5->next, _2
# LinkedList.cpp:166:         if (p->next->data == x)
	movl	(%rax), %eax	# _2->data, _3
# LinkedList.cpp:166:         if (p->next->data == x)
	cmpl	%eax, -44(%rbp)	# _3, x
	jne	.L55	#,
# LinkedList.cpp:168:             flag = 1;
	movl	$1, -20(%rbp)	#, flag
# LinkedList.cpp:169:             q = p->next;
	movq	-16(%rbp), %rax	# p, tmp92
	movq	8(%rax), %rax	# p_5->next, tmp93
	movq	%rax, -8(%rbp)	# tmp93, q
# LinkedList.cpp:170:             p->next = q->next;
	movq	-8(%rbp), %rax	# q, tmp94
	movq	8(%rax), %rdx	# q_17->next, _4
# LinkedList.cpp:170:             p->next = q->next;
	movq	-16(%rbp), %rax	# p, tmp95
	movq	%rdx, 8(%rax)	# _4, p_5->next
# LinkedList.cpp:171:             free(q);
	movq	-8(%rbp), %rax	# q, tmp96
	movq	%rax, %rdi	# tmp96,
	call	free@PLT	#
.L55:
# LinkedList.cpp:173:         p = p->next;
	movq	-16(%rbp), %rax	# p, tmp97
	movq	8(%rax), %rax	# p_5->next, tmp98
	movq	%rax, -16(%rbp)	# tmp98, p
# LinkedList.cpp:164:     while (p && p->next)
	jmp	.L56	#
.L54:
# LinkedList.cpp:175:     if (flag)
	cmpl	$0, -20(%rbp)	#, flag
	je	.L57	#,
# LinkedList.cpp:176:         return true;
	movl	$1, %eax	#, _8
	jmp	.L58	#
.L57:
# LinkedList.cpp:178:         return false;
	movl	$0, %eax	#, _8
.L58:
# LinkedList.cpp:179: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2995:
	.size	_Z11RemoveByValRP4Nodei, .-_Z11RemoveByValRP4Nodei
	.globl	_Z12RemoveByVal2RP4Nodei
	.type	_Z12RemoveByVal2RP4Nodei, @function
_Z12RemoveByVal2RP4Nodei:
.LFB2996:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# Head, Head
	movl	%esi, -44(%rbp)	# x, x
# LinkedList.cpp:182:     LinkList *pcur = &Head, p;
	movq	-40(%rbp), %rax	# Head, tmp87
	movq	%rax, -16(%rbp)	# tmp87, pcur
# LinkedList.cpp:183:     int flag = 0;
	movl	$0, -20(%rbp)	#, flag
.L63:
# LinkedList.cpp:184:     while (p = *pcur)
	movq	-16(%rbp), %rax	# pcur, tmp88
	movq	(%rax), %rax	# *pcur_3, tmp89
	movq	%rax, -8(%rbp)	# tmp89, p
# LinkedList.cpp:184:     while (p = *pcur)
	cmpq	$0, -8(%rbp)	#, p
	setne	%al	#, retval.4_15
	testb	%al, %al	# retval.4_15
	je	.L60	#,
# LinkedList.cpp:186:         if (p->data == x)
	movq	-8(%rbp), %rax	# p, tmp90
	movl	(%rax), %eax	# p_14->data, _1
# LinkedList.cpp:186:         if (p->data == x)
	cmpl	%eax, -44(%rbp)	# _1, x
	jne	.L61	#,
# LinkedList.cpp:188:             flag = 1;
	movl	$1, -20(%rbp)	#, flag
# LinkedList.cpp:189:             *pcur = p->next;
	movq	-8(%rbp), %rax	# p, tmp91
	movq	8(%rax), %rdx	# p_14->next, _2
# LinkedList.cpp:189:             *pcur = p->next;
	movq	-16(%rbp), %rax	# pcur, tmp92
	movq	%rdx, (%rax)	# _2, *pcur_3
# LinkedList.cpp:190:             free(p);
	movq	-8(%rbp), %rax	# p, tmp93
	movq	%rax, %rdi	# tmp93,
	call	free@PLT	#
	jmp	.L63	#
.L61:
# LinkedList.cpp:193:             pcur = &p->next;
	movq	-8(%rbp), %rax	# p, tmp97
	addq	$8, %rax	#, tmp96
	movq	%rax, -16(%rbp)	# tmp96, pcur
# LinkedList.cpp:184:     while (p = *pcur)
	jmp	.L63	#
.L60:
# LinkedList.cpp:195:     if (flag)
	cmpl	$0, -20(%rbp)	#, flag
	je	.L64	#,
# LinkedList.cpp:196:         return true;
	movl	$1, %eax	#, _7
	jmp	.L65	#
.L64:
# LinkedList.cpp:198:         return false;
	movl	$0, %eax	#, _7
.L65:
# LinkedList.cpp:199: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2996:
	.size	_Z12RemoveByVal2RP4Nodei, .-_Z12RemoveByVal2RP4Nodei
	.globl	_Z32RemoveByValWithoutReferAndHeaderP4Nodei
	.type	_Z32RemoveByValWithoutReferAndHeaderP4Nodei, @function
_Z32RemoveByValWithoutReferAndHeaderP4Nodei:
.LFB2997:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# Head, Head
	movl	%esi, -44(%rbp)	# x, x
# LinkedList.cpp:202:     LinkList *pcur = &Head, p, phead = Head;
	leaq	-40(%rbp), %rax	#, tmp89
	movq	%rax, -24(%rbp)	# tmp89, pcur
# LinkedList.cpp:202:     LinkList *pcur = &Head, p, phead = Head;
	movq	-40(%rbp), %rax	# Head, tmp90
	movq	%rax, -16(%rbp)	# tmp90, phead
.L70:
# LinkedList.cpp:203:     while (p = *pcur)
	movq	-24(%rbp), %rax	# pcur, tmp91
	movq	(%rax), %rax	# *pcur_7, tmp92
	movq	%rax, -8(%rbp)	# tmp92, p
# LinkedList.cpp:203:     while (p = *pcur)
	cmpq	$0, -8(%rbp)	#, p
	setne	%al	#, retval.5_15
	testb	%al, %al	# retval.5_15
	je	.L67	#,
# LinkedList.cpp:205:         if (p->data == x)
	movq	-8(%rbp), %rax	# p, tmp93
	movl	(%rax), %eax	# p_14->data, _1
# LinkedList.cpp:205:         if (p->data == x)
	cmpl	%eax, -44(%rbp)	# _1, x
	jne	.L68	#,
# LinkedList.cpp:207:             *pcur = p->next;
	movq	-8(%rbp), %rax	# p, tmp94
	movq	8(%rax), %rdx	# p_14->next, _2
# LinkedList.cpp:207:             *pcur = p->next;
	movq	-24(%rbp), %rax	# pcur, tmp95
	movq	%rdx, (%rax)	# _2, *pcur_7
# LinkedList.cpp:208:             free(p);
	movq	-8(%rbp), %rax	# p, tmp96
	movq	%rax, %rdi	# tmp96,
	call	free@PLT	#
	jmp	.L70	#
.L68:
# LinkedList.cpp:211:             pcur = &p->next;
	movq	-8(%rbp), %rax	# p, tmp100
	addq	$8, %rax	#, tmp99
	movq	%rax, -24(%rbp)	# tmp99, pcur
# LinkedList.cpp:203:     while (p = *pcur)
	jmp	.L70	#
.L67:
# LinkedList.cpp:214:     phead->next = Head->next;
	movq	-40(%rbp), %rax	# Head, Head.6_3
	movq	8(%rax), %rdx	# Head.6_3->next, _4
# LinkedList.cpp:214:     phead->next = Head->next;
	movq	-16(%rbp), %rax	# phead, tmp101
	movq	%rdx, 8(%rax)	# _4, phead_13->next
# LinkedList.cpp:215:     phead->data = Head->data;
	movq	-40(%rbp), %rax	# Head, Head.7_5
	movl	(%rax), %edx	# Head.7_5->data, _6
# LinkedList.cpp:215:     phead->data = Head->data;
	movq	-16(%rbp), %rax	# phead, tmp102
	movl	%edx, (%rax)	# _6, phead_13->data
# LinkedList.cpp:216: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2997:
	.size	_Z32RemoveByValWithoutReferAndHeaderP4Nodei, .-_Z32RemoveByValWithoutReferAndHeaderP4Nodei
	.globl	_Z4CopyRP4Node
	.type	_Z4CopyRP4Node, @function
_Z4CopyRP4Node:
.LFB2998:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# Head, Head
# LinkedList.cpp:219: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp98
	movq	%rax, -24(%rbp)	# tmp98, D.65391
	xorl	%eax, %eax	# tmp98
# LinkedList.cpp:220:     LinkNode *newhead, *cur = Head, **pcur = &newhead;
	movq	-56(%rbp), %rax	# Head, tmp87
	movq	(%rax), %rax	# *Head_7(D), tmp88
	movq	%rax, -40(%rbp)	# tmp88, cur
# LinkedList.cpp:220:     LinkNode *newhead, *cur = Head, **pcur = &newhead;
	leaq	-48(%rbp), %rax	#, tmp89
	movq	%rax, -32(%rbp)	# tmp89, pcur
.L73:
# LinkedList.cpp:221:     while (cur)
	cmpq	$0, -40(%rbp)	#, cur
	je	.L72	#,
# LinkedList.cpp:223:         *pcur = new LinkNode(cur->data);
	movl	$16, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp90, _11
	movq	-40(%rbp), %rax	# cur, tmp91
	movl	(%rax), %eax	# cur_3->data, _1
	movl	%eax, %esi	# _1,
	movq	%rbx, %rdi	# _11,
	call	_ZN4NodeC1Ei	#
# LinkedList.cpp:223:         *pcur = new LinkNode(cur->data);
	movq	-32(%rbp), %rax	# pcur, tmp92
	movq	%rbx, (%rax)	# _11, *pcur_4
# LinkedList.cpp:224:         pcur = &(*pcur)->next;
	movq	-32(%rbp), %rax	# pcur, tmp93
	movq	(%rax), %rax	# *pcur_4, _2
# LinkedList.cpp:224:         pcur = &(*pcur)->next;
	addq	$8, %rax	#, tmp94
	movq	%rax, -32(%rbp)	# tmp94, pcur
# LinkedList.cpp:225:         cur = cur->next;
	movq	-40(%rbp), %rax	# cur, tmp95
	movq	8(%rax), %rax	# cur_3->next, tmp96
	movq	%rax, -40(%rbp)	# tmp96, cur
# LinkedList.cpp:221:     while (cur)
	jmp	.L73	#
.L72:
# LinkedList.cpp:227:     return newhead;
	movq	-48(%rbp), %rax	# newhead, _18
# LinkedList.cpp:228: }
	movq	-24(%rbp), %rdx	# D.65391, tmp99
	xorq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp99
	je	.L75	#,
	call	__stack_chk_fail@PLT	#
.L75:
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2998:
	.size	_Z4CopyRP4Node, .-_Z4CopyRP4Node
	.globl	_Z11DetectCycleP4Node
	.type	_Z11DetectCycleP4Node, @function
_Z11DetectCycleP4Node:
.LFB2999:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# head, head
# LinkedList.cpp:231:     LinkNode *slow = head, *fast = head;
	movq	-24(%rbp), %rax	# head, tmp87
	movq	%rax, -16(%rbp)	# tmp87, slow
# LinkedList.cpp:231:     LinkNode *slow = head, *fast = head;
	movq	-24(%rbp), %rax	# head, tmp88
	movq	%rax, -8(%rbp)	# tmp88, fast
.L83:
# LinkedList.cpp:234:         if (fast && fast->next && (fast = fast->next->next))
	cmpq	$0, -8(%rbp)	#, fast
	je	.L77	#,
# LinkedList.cpp:234:         if (fast && fast->next && (fast = fast->next->next))
	movq	-8(%rbp), %rax	# fast, tmp89
	movq	8(%rax), %rax	# fast_5->next, _1
# LinkedList.cpp:234:         if (fast && fast->next && (fast = fast->next->next))
	testq	%rax, %rax	# _1
	je	.L77	#,
# LinkedList.cpp:234:         if (fast && fast->next && (fast = fast->next->next))
	movq	-8(%rbp), %rax	# fast, tmp90
	movq	8(%rax), %rax	# fast_5->next, _2
# LinkedList.cpp:234:         if (fast && fast->next && (fast = fast->next->next))
	movq	8(%rax), %rax	# _2->next, tmp91
	movq	%rax, -8(%rbp)	# tmp91, fast
# LinkedList.cpp:234:         if (fast && fast->next && (fast = fast->next->next))
	cmpq	$0, -8(%rbp)	#, fast
	je	.L77	#,
# LinkedList.cpp:234:         if (fast && fast->next && (fast = fast->next->next))
	movl	$1, %eax	#, iftmp.9_9
	jmp	.L78	#
.L77:
# LinkedList.cpp:234:         if (fast && fast->next && (fast = fast->next->next))
	movl	$0, %eax	#, iftmp.9_9
.L78:
# LinkedList.cpp:234:         if (fast && fast->next && (fast = fast->next->next))
	testb	%al, %al	# iftmp.9_9
	je	.L79	#,
# LinkedList.cpp:236:             slow = slow->next;
	movq	-16(%rbp), %rax	# slow, tmp92
	movq	8(%rax), %rax	# slow_3->next, tmp93
	movq	%rax, -16(%rbp)	# tmp93, slow
# LinkedList.cpp:237:             if (fast == slow)
	movq	-8(%rbp), %rax	# fast, tmp94
	cmpq	-16(%rbp), %rax	# slow, tmp94
	jne	.L83	#,
# LinkedList.cpp:238:                 break;
	jmp	.L86	#
.L79:
# LinkedList.cpp:241:             return nullptr;
	movl	$0, %eax	#, _10
	jmp	.L82	#
.L86:
# LinkedList.cpp:243:     slow = head;
	movq	-24(%rbp), %rax	# head, tmp95
	movq	%rax, -16(%rbp)	# tmp95, slow
.L85:
# LinkedList.cpp:246:         if (fast == slow)
	movq	-8(%rbp), %rax	# fast, tmp96
	cmpq	-16(%rbp), %rax	# slow, tmp96
	jne	.L84	#,
# LinkedList.cpp:247:             return fast;
	movq	-8(%rbp), %rax	# fast, _10
	jmp	.L82	#
.L84:
# LinkedList.cpp:248:         slow = slow->next;
	movq	-16(%rbp), %rax	# slow, tmp97
	movq	8(%rax), %rax	# slow_4->next, tmp98
	movq	%rax, -16(%rbp)	# tmp98, slow
# LinkedList.cpp:249:         fast = fast->next;
	movq	-8(%rbp), %rax	# fast, tmp99
	movq	8(%rax), %rax	# fast_8->next, tmp100
	movq	%rax, -8(%rbp)	# tmp100, fast
# LinkedList.cpp:246:         if (fast == slow)
	jmp	.L85	#
.L82:
# LinkedList.cpp:251: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2999:
	.size	_Z11DetectCycleP4Node, .-_Z11DetectCycleP4Node
	.globl	_Z8FreeListRP4Node
	.type	_Z8FreeListRP4Node, @function
_Z8FreeListRP4Node:
.LFB3000:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
.L89:
# LinkedList.cpp:256:     while (Head)
	movq	-24(%rbp), %rax	# Head, tmp85
	movq	(%rax), %rax	# *Head_6(D), _1
	testq	%rax, %rax	# _1
	je	.L90	#,
# LinkedList.cpp:258:         p = Head->next; //保存Head后置结点
	movq	-24(%rbp), %rax	# Head, tmp86
	movq	(%rax), %rax	# *Head_6(D), _2
# LinkedList.cpp:258:         p = Head->next; //保存Head后置结点
	movq	8(%rax), %rax	# _2->next, tmp87
	movq	%rax, -8(%rbp)	# tmp87, p
# LinkedList.cpp:259:         free(Head);
	movq	-24(%rbp), %rax	# Head, tmp88
	movq	(%rax), %rax	# *Head_6(D), _3
	movq	%rax, %rdi	# _3,
	call	free@PLT	#
# LinkedList.cpp:260:         Head = p;
	movq	-24(%rbp), %rax	# Head, tmp89
	movq	-8(%rbp), %rdx	# p, tmp90
	movq	%rdx, (%rax)	# tmp90, *Head_6(D)
# LinkedList.cpp:256:     while (Head)
	jmp	.L89	#
.L90:
# LinkedList.cpp:262: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3000:
	.size	_Z8FreeListRP4Node, .-_Z8FreeListRP4Node
	.globl	_Z7ReverseRP4Node
	.type	_Z7ReverseRP4Node, @function
_Z7ReverseRP4Node:
.LFB3001:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# Head, Head
# LinkedList.cpp:265:     LinkList temp = NULL, pred = NULL;
	movq	$0, -8(%rbp)	#, temp
# LinkedList.cpp:265:     LinkList temp = NULL, pred = NULL;
	movq	$0, -24(%rbp)	#, pred
# LinkedList.cpp:266:     LinkList cur = Head->next;
	movq	-40(%rbp), %rax	# Head, tmp84
	movq	(%rax), %rax	# *Head_9(D), _1
# LinkedList.cpp:266:     LinkList cur = Head->next;
	movq	8(%rax), %rax	# _1->next, tmp85
	movq	%rax, -16(%rbp)	# tmp85, cur
.L93:
# LinkedList.cpp:267:     while (cur)
	cmpq	$0, -16(%rbp)	#, cur
	je	.L92	#,
# LinkedList.cpp:269:         temp = cur->next;
	movq	-16(%rbp), %rax	# cur, tmp86
	movq	8(%rax), %rax	# cur_4->next, tmp87
	movq	%rax, -8(%rbp)	# tmp87, temp
# LinkedList.cpp:270:         cur->next = pred;
	movq	-16(%rbp), %rax	# cur, tmp88
	movq	-24(%rbp), %rdx	# pred, tmp89
	movq	%rdx, 8(%rax)	# tmp89, cur_4->next
# LinkedList.cpp:271:         pred = cur;
	movq	-16(%rbp), %rax	# cur, tmp90
	movq	%rax, -24(%rbp)	# tmp90, pred
# LinkedList.cpp:272:         cur = temp;
	movq	-8(%rbp), %rax	# temp, tmp91
	movq	%rax, -16(%rbp)	# tmp91, cur
# LinkedList.cpp:267:     while (cur)
	jmp	.L93	#
.L92:
# LinkedList.cpp:274:     Head->next = pred;
	movq	-40(%rbp), %rax	# Head, tmp92
	movq	(%rax), %rax	# *Head_9(D), _2
# LinkedList.cpp:274:     Head->next = pred;
	movq	-24(%rbp), %rdx	# pred, tmp93
	movq	%rdx, 8(%rax)	# tmp93, _2->next
# LinkedList.cpp:275: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3001:
	.size	_Z7ReverseRP4Node, .-_Z7ReverseRP4Node
	.globl	_Z18ReverseRecursivelyRP4Node
	.type	_Z18ReverseRecursivelyRP4Node, @function
_Z18ReverseRecursivelyRP4Node:
.LFB3002:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# head, head
# LinkedList.cpp:278:     if (!head || !(head->next))
	movq	-24(%rbp), %rax	# head, tmp94
	movq	(%rax), %rax	# *head_13(D), _1
# LinkedList.cpp:278:     if (!head || !(head->next))
	testq	%rax, %rax	# _1
	je	.L95	#,
# LinkedList.cpp:278:     if (!head || !(head->next))
	movq	-24(%rbp), %rax	# head, tmp95
	movq	(%rax), %rax	# *head_13(D), _2
# LinkedList.cpp:278:     if (!head || !(head->next))
	movq	8(%rax), %rax	# _2->next, _3
# LinkedList.cpp:278:     if (!head || !(head->next))
	testq	%rax, %rax	# _3
	jne	.L96	#,
.L95:
# LinkedList.cpp:280:         return head;
	movq	-24(%rbp), %rax	# head, tmp96
	movq	(%rax), %rax	# *head_13(D), _10
	jmp	.L97	#
.L96:
# LinkedList.cpp:282:     LinkList newhead = ReverseRecursively(head->next);
	movq	-24(%rbp), %rax	# head, tmp97
	movq	(%rax), %rax	# *head_13(D), _4
# LinkedList.cpp:282:     LinkList newhead = ReverseRecursively(head->next);
	addq	$8, %rax	#, _5
# LinkedList.cpp:282:     LinkList newhead = ReverseRecursively(head->next);
	movq	%rax, %rdi	# _5,
	call	_Z18ReverseRecursivelyRP4Node	#
	movq	%rax, -8(%rbp)	# _15, newhead
# LinkedList.cpp:283:     head->next->next = head;
	movq	-24(%rbp), %rax	# head, tmp98
	movq	(%rax), %rax	# *head_13(D), _6
# LinkedList.cpp:283:     head->next->next = head;
	movq	8(%rax), %rax	# _6->next, _7
# LinkedList.cpp:283:     head->next->next = head;
	movq	-24(%rbp), %rdx	# head, tmp99
	movq	(%rdx), %rdx	# *head_13(D), _8
# LinkedList.cpp:283:     head->next->next = head;
	movq	%rdx, 8(%rax)	# _8, _7->next
# LinkedList.cpp:284:     head->next = NULL;
	movq	-24(%rbp), %rax	# head, tmp100
	movq	(%rax), %rax	# *head_13(D), _9
# LinkedList.cpp:284:     head->next = NULL;
	movq	$0, 8(%rax)	#, _9->next
# LinkedList.cpp:285:     return newhead;
	movq	-8(%rbp), %rax	# newhead, _10
.L97:
# LinkedList.cpp:286: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3002:
	.size	_Z18ReverseRecursivelyRP4Node, .-_Z18ReverseRecursivelyRP4Node
	.globl	_Z13AddTwoNembersP4NodeS0_
	.type	_Z13AddTwoNembersP4NodeS0_, @function
_Z13AddTwoNembersP4NodeS0_:
.LFB3003:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# L1, L1
	movq	%rsi, -80(%rbp)	# L2, L2
# LinkedList.cpp:289:     LinkList p1 = ReverseRecursively(L1), p2 = ReverseRecursively(L2), prev = nullptr;
	leaq	-72(%rbp), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	_Z18ReverseRecursivelyRP4Node	#
	movq	%rax, -48(%rbp)	# _14, p1
# LinkedList.cpp:289:     LinkList p1 = ReverseRecursively(L1), p2 = ReverseRecursively(L2), prev = nullptr;
	leaq	-80(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_Z18ReverseRecursivelyRP4Node	#
	movq	%rax, -40(%rbp)	# _17, p2
# LinkedList.cpp:289:     LinkList p1 = ReverseRecursively(L1), p2 = ReverseRecursively(L2), prev = nullptr;
	movq	$0, -32(%rbp)	#, prev
# LinkedList.cpp:290:     int carry = 0;
	movl	$0, -56(%rbp)	#, carry
.L107:
# LinkedList.cpp:291:     while (p1 || p2 || carry)
	cmpq	$0, -48(%rbp)	#, p1
	jne	.L99	#,
# LinkedList.cpp:291:     while (p1 || p2 || carry)
	cmpq	$0, -40(%rbp)	#, p2
	jne	.L99	#,
# LinkedList.cpp:291:     while (p1 || p2 || carry)
	cmpl	$0, -56(%rbp)	#, carry
	je	.L100	#,
.L99:
# LinkedList.cpp:293:         int sum = (p1 ? p1->data : 0) + (p2 ? p2->data : 0) + carry;
	cmpq	$0, -48(%rbp)	#, p1
	je	.L101	#,
# LinkedList.cpp:293:         int sum = (p1 ? p1->data : 0) + (p2 ? p2->data : 0) + carry;
	movq	-48(%rbp), %rax	# p1, tmp93
	movl	(%rax), %edx	# p1_3->data, iftmp.10_9
	jmp	.L102	#
.L101:
# LinkedList.cpp:293:         int sum = (p1 ? p1->data : 0) + (p2 ? p2->data : 0) + carry;
	movl	$0, %edx	#, iftmp.10_9
.L102:
# LinkedList.cpp:293:         int sum = (p1 ? p1->data : 0) + (p2 ? p2->data : 0) + carry;
	cmpq	$0, -40(%rbp)	#, p2
	je	.L103	#,
# LinkedList.cpp:293:         int sum = (p1 ? p1->data : 0) + (p2 ? p2->data : 0) + carry;
	movq	-40(%rbp), %rax	# p2, tmp94
	movl	(%rax), %eax	# p2_5->data, iftmp.11_10
	jmp	.L104	#
.L103:
# LinkedList.cpp:293:         int sum = (p1 ? p1->data : 0) + (p2 ? p2->data : 0) + carry;
	movl	$0, %eax	#, iftmp.11_10
.L104:
# LinkedList.cpp:293:         int sum = (p1 ? p1->data : 0) + (p2 ? p2->data : 0) + carry;
	addl	%eax, %edx	# iftmp.11_10, _1
# LinkedList.cpp:293:         int sum = (p1 ? p1->data : 0) + (p2 ? p2->data : 0) + carry;
	movl	-56(%rbp), %eax	# carry, tmp98
	addl	%edx, %eax	# _1, tmp97
	movl	%eax, -52(%rbp)	# tmp97, sum
# LinkedList.cpp:294:         LinkList cur = new LinkNode(sum % 10, prev);
	movl	$16, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp99, _28
	movl	-52(%rbp), %edx	# sum, tmp100
	movslq	%edx, %rax	# tmp100, tmp101
	imulq	$1717986919, %rax, %rax	#, tmp101, tmp102
	shrq	$32, %rax	#, tmp103
	movl	%eax, %ecx	# tmp103, tmp104
	sarl	$2, %ecx	#, tmp104
	movl	%edx, %eax	# tmp100, tmp105
	sarl	$31, %eax	#, tmp105
	subl	%eax, %ecx	# tmp105, _2
	movl	%ecx, %eax	# _2, tmp106
	sall	$2, %eax	#, tmp106
	addl	%ecx, %eax	# _2, tmp106
	addl	%eax, %eax	# tmp107
	movl	%edx, %ecx	# tmp100, tmp100
	subl	%eax, %ecx	# tmp106, tmp100
	movq	-32(%rbp), %rax	# prev, tmp108
	movq	%rax, %rdx	# tmp108,
	movl	%ecx, %esi	# _2,
	movq	%rbx, %rdi	# _28,
	call	_ZN4NodeC1EiPS_	#
	movq	%rbx, -24(%rbp)	# _28, cur
# LinkedList.cpp:295:         prev = cur;
	movq	-24(%rbp), %rax	# cur, tmp109
	movq	%rax, -32(%rbp)	# tmp109, prev
# LinkedList.cpp:296:         carry = sum / 10;
	movl	-52(%rbp), %eax	# sum, tmp111
	movslq	%eax, %rdx	# tmp111, tmp112
	imulq	$1717986919, %rdx, %rdx	#, tmp112, tmp113
	shrq	$32, %rdx	#, tmp114
	sarl	$2, %edx	#, tmp115
	sarl	$31, %eax	#, tmp116
	subl	%eax, %edx	# tmp116, tmp115
	movl	%edx, %eax	# tmp115, tmp110
	movl	%eax, -56(%rbp)	# tmp110, carry
# LinkedList.cpp:297:         if (p1)
	cmpq	$0, -48(%rbp)	#, p1
	je	.L105	#,
# LinkedList.cpp:298:             p1 = p1->next;
	movq	-48(%rbp), %rax	# p1, tmp117
	movq	8(%rax), %rax	# p1_3->next, tmp118
	movq	%rax, -48(%rbp)	# tmp118, p1
.L105:
# LinkedList.cpp:299:         if (p2)
	cmpq	$0, -40(%rbp)	#, p2
	je	.L107	#,
# LinkedList.cpp:300:             p2 = p2->next;
	movq	-40(%rbp), %rax	# p2, tmp119
	movq	8(%rax), %rax	# p2_5->next, tmp120
	movq	%rax, -40(%rbp)	# tmp120, p2
# LinkedList.cpp:291:     while (p1 || p2 || carry)
	jmp	.L107	#
.L100:
# LinkedList.cpp:302:     return prev;
	movq	-32(%rbp), %rax	# prev, _21
# LinkedList.cpp:303: }
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3003:
	.size	_Z13AddTwoNembersP4NodeS0_, .-_Z13AddTwoNembersP4NodeS0_
	.globl	_Z18MultiplyTwoNumbersP4NodeS0_
	.type	_Z18MultiplyTwoNumbersP4NodeS0_, @function
_Z18MultiplyTwoNumbersP4NodeS0_:
.LFB3004:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# L1, L1
	movq	%rsi, -112(%rbp)	# L2, L2
# LinkedList.cpp:305: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp172
	movq	%rax, -24(%rbp)	# tmp172, D.65393
	xorl	%eax, %eax	# tmp172
# LinkedList.cpp:306:     LinkList head1 = ReverseRecursively(L1), head2 = ReverseRecursively(L2), p1 = head1, p2, head = nullptr, *pp, p;
	leaq	-104(%rbp), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	_Z18ReverseRecursivelyRP4Node	#
	movq	%rax, -40(%rbp)	# _35, head1
# LinkedList.cpp:306:     LinkList head1 = ReverseRecursively(L1), head2 = ReverseRecursively(L2), p1 = head1, p2, head = nullptr, *pp, p;
	leaq	-112(%rbp), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	_Z18ReverseRecursivelyRP4Node	#
	movq	%rax, -32(%rbp)	# _38, head2
# LinkedList.cpp:306:     LinkList head1 = ReverseRecursively(L1), head2 = ReverseRecursively(L2), p1 = head1, p2, head = nullptr, *pp, p;
	movq	-40(%rbp), %rax	# head1, tmp110
	movq	%rax, -72(%rbp)	# tmp110, p1
# LinkedList.cpp:306:     LinkList head1 = ReverseRecursively(L1), head2 = ReverseRecursively(L2), p1 = head1, p2, head = nullptr, *pp, p;
	movq	$0, -80(%rbp)	#, head
# LinkedList.cpp:307:     int count = 0, carry;
	movl	$0, -92(%rbp)	#, count
.L116:
# LinkedList.cpp:308:     while (p1)
	cmpq	$0, -72(%rbp)	#, p1
	je	.L110	#,
# LinkedList.cpp:310:         p2 = head2;
	movq	-32(%rbp), %rax	# head2, tmp111
	movq	%rax, -64(%rbp)	# tmp111, p2
# LinkedList.cpp:311:         pp = &head;
	leaq	-80(%rbp), %rax	#, tmp112
	movq	%rax, -56(%rbp)	# tmp112, pp
# LinkedList.cpp:312:         for (int i = 0; i < count; i++) //错位，模仿竖式计算方式
	movl	$0, -88(%rbp)	#, i
.L112:
# LinkedList.cpp:312:         for (int i = 0; i < count; i++) //错位，模仿竖式计算方式
	movl	-88(%rbp), %eax	# i, tmp113
	cmpl	-92(%rbp), %eax	# count, tmp113
	jge	.L111	#,
# LinkedList.cpp:313:             pp = &(*pp)->next;
	movq	-56(%rbp), %rax	# pp, tmp114
	movq	(%rax), %rax	# *pp_20, _1
# LinkedList.cpp:313:             pp = &(*pp)->next;
	addq	$8, %rax	#, tmp115
	movq	%rax, -56(%rbp)	# tmp115, pp
# LinkedList.cpp:312:         for (int i = 0; i < count; i++) //错位，模仿竖式计算方式
	addl	$1, -88(%rbp)	#, i
	jmp	.L112	#
.L111:
# LinkedList.cpp:314:         while (p2)
	cmpq	$0, -64(%rbp)	#, p2
	je	.L113	#,
# LinkedList.cpp:316:             if (!(p = *pp))
	movq	-56(%rbp), %rax	# pp, tmp116
	movq	(%rax), %rax	# *pp_21, tmp117
	movq	%rax, -48(%rbp)	# tmp117, p
# LinkedList.cpp:316:             if (!(p = *pp))
	cmpq	$0, -48(%rbp)	#, p
	sete	%al	#, retval.12_49
# LinkedList.cpp:316:             if (!(p = *pp))
	testb	%al, %al	# retval.12_49
	je	.L114	#,
# LinkedList.cpp:317:                 p = *pp = new LinkNode(p1->data * p2->data); //新建
	movl	$16, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp118, _52
# LinkedList.cpp:317:                 p = *pp = new LinkNode(p1->data * p2->data); //新建
	movq	-72(%rbp), %rax	# p1, tmp119
	movl	(%rax), %edx	# p1_18->data, _2
# LinkedList.cpp:317:                 p = *pp = new LinkNode(p1->data * p2->data); //新建
	movq	-64(%rbp), %rax	# p2, tmp120
	movl	(%rax), %eax	# p2_19->data, _3
# LinkedList.cpp:317:                 p = *pp = new LinkNode(p1->data * p2->data); //新建
	imull	%edx, %eax	# _2, _4
	movl	%eax, %esi	# _4,
	movq	%rbx, %rdi	# _52,
	call	_ZN4NodeC1Ei	#
# LinkedList.cpp:317:                 p = *pp = new LinkNode(p1->data * p2->data); //新建
	movq	-56(%rbp), %rax	# pp, tmp121
	movq	%rbx, (%rax)	# _52, *pp_21
# LinkedList.cpp:317:                 p = *pp = new LinkNode(p1->data * p2->data); //新建
	movq	-56(%rbp), %rax	# pp, tmp122
	movq	(%rax), %rax	# *pp_21, tmp123
	movq	%rax, -48(%rbp)	# tmp123, p
	jmp	.L115	#
.L114:
# LinkedList.cpp:319:                 p->data += p1->data * p2->data; //叠加
	movq	-48(%rbp), %rax	# p, tmp124
	movl	(%rax), %edx	# p_48->data, _5
# LinkedList.cpp:319:                 p->data += p1->data * p2->data; //叠加
	movq	-72(%rbp), %rax	# p1, tmp125
	movl	(%rax), %ecx	# p1_18->data, _6
# LinkedList.cpp:319:                 p->data += p1->data * p2->data; //叠加
	movq	-64(%rbp), %rax	# p2, tmp126
	movl	(%rax), %eax	# p2_19->data, _7
# LinkedList.cpp:319:                 p->data += p1->data * p2->data; //叠加
	imull	%ecx, %eax	# _6, _8
# LinkedList.cpp:319:                 p->data += p1->data * p2->data; //叠加
	addl	%eax, %edx	# _8, _9
	movq	-48(%rbp), %rax	# p, tmp127
	movl	%edx, (%rax)	# _9, p_48->data
.L115:
# LinkedList.cpp:320:             pp = &p->next;
	movq	-48(%rbp), %rax	# p, tmp131
	addq	$8, %rax	#, tmp130
	movq	%rax, -56(%rbp)	# tmp130, pp
# LinkedList.cpp:321:             p2 = p2->next;
	movq	-64(%rbp), %rax	# p2, tmp132
	movq	8(%rax), %rax	# p2_19->next, tmp133
	movq	%rax, -64(%rbp)	# tmp133, p2
# LinkedList.cpp:314:         while (p2)
	jmp	.L111	#
.L113:
# LinkedList.cpp:323:         count++;
	addl	$1, -92(%rbp)	#, count
# LinkedList.cpp:324:         p1 = p1->next;
	movq	-72(%rbp), %rax	# p1, tmp134
	movq	8(%rax), %rax	# p1_18->next, tmp135
	movq	%rax, -72(%rbp)	# tmp135, p1
# LinkedList.cpp:308:     while (p1)
	jmp	.L116	#
.L110:
# LinkedList.cpp:326:     pp = &head;
	leaq	-80(%rbp), %rax	#, tmp136
	movq	%rax, -56(%rbp)	# tmp136, pp
.L121:
# LinkedList.cpp:327:     while (p = *pp) //进位，每一项暂存的数字不会太大(极限情况也就是几十个81)，最后进位一次即可
	movq	-56(%rbp), %rax	# pp, tmp137
	movq	(%rax), %rax	# *pp_22, tmp138
	movq	%rax, -48(%rbp)	# tmp138, p
# LinkedList.cpp:327:     while (p = *pp) //进位，每一项暂存的数字不会太大(极限情况也就是几十个81)，最后进位一次即可
	cmpq	$0, -48(%rbp)	#, p
	setne	%al	#, retval.13_63
	testb	%al, %al	# retval.13_63
	je	.L117	#,
# LinkedList.cpp:329:         if (carry = p->data / 10)
	movq	-48(%rbp), %rax	# p, tmp139
	movl	(%rax), %eax	# p_62->data, _10
# LinkedList.cpp:329:         if (carry = p->data / 10)
	movslq	%eax, %rdx	# _10, tmp140
	imulq	$1717986919, %rdx, %rdx	#, tmp140, tmp141
	shrq	$32, %rdx	#, tmp142
	sarl	$2, %edx	#, tmp143
	sarl	$31, %eax	#, tmp144
	subl	%eax, %edx	# tmp144, tmp143
	movl	%edx, %eax	# tmp143, tmp145
	movl	%eax, -84(%rbp)	# tmp145, carry
# LinkedList.cpp:329:         if (carry = p->data / 10)
	cmpl	$0, -84(%rbp)	#, carry
	setne	%al	#, retval.14_69
# LinkedList.cpp:329:         if (carry = p->data / 10)
	testb	%al, %al	# retval.14_69
	je	.L118	#,
# LinkedList.cpp:331:             p->data = p->data % 10;
	movq	-48(%rbp), %rax	# p, tmp146
	movl	(%rax), %ecx	# p_62->data, _11
# LinkedList.cpp:331:             p->data = p->data % 10;
	movslq	%ecx, %rax	# _11, tmp147
	imulq	$1717986919, %rax, %rax	#, tmp147, tmp148
	shrq	$32, %rax	#, tmp149
	movl	%eax, %edx	# tmp149, tmp150
	sarl	$2, %edx	#, tmp150
	movl	%ecx, %eax	# _11, tmp151
	sarl	$31, %eax	#, tmp151
	subl	%eax, %edx	# tmp151, _12
	movl	%edx, %eax	# _12, tmp152
	sall	$2, %eax	#, tmp152
	addl	%edx, %eax	# _12, tmp152
	addl	%eax, %eax	# tmp153
	subl	%eax, %ecx	# tmp152, _11
	movl	%ecx, %edx	# _11, _12
# LinkedList.cpp:331:             p->data = p->data % 10;
	movq	-48(%rbp), %rax	# p, tmp154
	movl	%edx, (%rax)	# _12, p_62->data
# LinkedList.cpp:332:             pp = &p->next;
	movq	-48(%rbp), %rax	# p, tmp158
	addq	$8, %rax	#, tmp157
	movq	%rax, -56(%rbp)	# tmp157, pp
# LinkedList.cpp:333:             if (*pp)
	movq	-56(%rbp), %rax	# pp, tmp159
	movq	(%rax), %rax	# *pp_72, _13
# LinkedList.cpp:333:             if (*pp)
	testq	%rax, %rax	# _13
	je	.L119	#,
# LinkedList.cpp:334:                 (*pp)->data += carry;
	movq	-56(%rbp), %rax	# pp, tmp160
	movq	(%rax), %rax	# *pp_72, _14
# LinkedList.cpp:334:                 (*pp)->data += carry;
	movl	(%rax), %ecx	# _14->data, _15
# LinkedList.cpp:334:                 (*pp)->data += carry;
	movq	-56(%rbp), %rax	# pp, tmp161
	movq	(%rax), %rax	# *pp_72, _16
# LinkedList.cpp:334:                 (*pp)->data += carry;
	movl	-84(%rbp), %edx	# carry, tmp162
	addl	%ecx, %edx	# _15, _17
	movl	%edx, (%rax)	# _17, _16->data
	jmp	.L121	#
.L119:
# LinkedList.cpp:336:                 *pp = new LinkNode(carry);
	movl	$16, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp163, _74
	movl	-84(%rbp), %eax	# carry, tmp164
	movl	%eax, %esi	# tmp164,
	movq	%rbx, %rdi	# _74,
	call	_ZN4NodeC1Ei	#
# LinkedList.cpp:336:                 *pp = new LinkNode(carry);
	movq	-56(%rbp), %rax	# pp, tmp165
	movq	%rbx, (%rax)	# _74, *pp_72
	jmp	.L121	#
.L118:
# LinkedList.cpp:339:             pp = &p->next;
	movq	-48(%rbp), %rax	# p, tmp169
	addq	$8, %rax	#, tmp168
	movq	%rax, -56(%rbp)	# tmp168, pp
# LinkedList.cpp:327:     while (p = *pp) //进位，每一项暂存的数字不会太大(极限情况也就是几十个81)，最后进位一次即可
	jmp	.L121	#
.L117:
# LinkedList.cpp:341:     return ReverseRecursively(head);
	leaq	-80(%rbp), %rax	#, tmp170
	movq	%rax, %rdi	# tmp170,
	call	_Z18ReverseRecursivelyRP4Node	#
# LinkedList.cpp:342: }
	movq	-24(%rbp), %rsi	# D.65393, tmp173
	xorq	%fs:40, %rsi	# MEM[(<address-space-1> long unsigned int *)40B], tmp173
	je	.L123	#,
	call	__stack_chk_fail@PLT	#
.L123:
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3004:
	.size	_Z18MultiplyTwoNumbersP4NodeS0_, .-_Z18MultiplyTwoNumbersP4NodeS0_
	.globl	_Z21FactorialLargeNumbersi
	.type	_Z21FactorialLargeNumbersi, @function
_Z21FactorialLargeNumbersi:
.LFB3005:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# num, num
# LinkedList.cpp:344: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	movq	%rax, -24(%rbp)	# tmp128, D.65394
	xorl	%eax, %eax	# tmp128
# LinkedList.cpp:346:     LinkList head = new LinkNode(1), *pp, p;
	movl	$16, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp93, _18
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# _18,
	call	_ZN4NodeC1Ei	#
	movq	%rbx, -48(%rbp)	# _18, head
# LinkedList.cpp:347:     for (int i = 1, carry; i <= num; i++)
	movl	$1, -56(%rbp)	#, i
.L133:
# LinkedList.cpp:347:     for (int i = 1, carry; i <= num; i++)
	movl	-56(%rbp), %eax	# i, tmp94
	cmpl	-68(%rbp), %eax	# num, tmp94
	jg	.L125	#,
# LinkedList.cpp:349:         carry = 0;
	movl	$0, -52(%rbp)	#, carry
# LinkedList.cpp:350:         pp = &head;
	leaq	-48(%rbp), %rax	#, tmp95
	movq	%rax, -40(%rbp)	# tmp95, pp
.L132:
# LinkedList.cpp:351:         while ((p = *pp) || carry)
	movq	-40(%rbp), %rax	# pp, tmp96
	movq	(%rax), %rax	# *pp_7, tmp97
	movq	%rax, -32(%rbp)	# tmp97, p
# LinkedList.cpp:351:         while ((p = *pp) || carry)
	cmpq	$0, -32(%rbp)	#, p
	jne	.L126	#,
# LinkedList.cpp:351:         while ((p = *pp) || carry)
	cmpl	$0, -52(%rbp)	#, carry
	je	.L127	#,
.L126:
# LinkedList.cpp:351:         while ((p = *pp) || carry)
	movl	$1, %eax	#, iftmp.16_11
	jmp	.L128	#
.L127:
# LinkedList.cpp:351:         while ((p = *pp) || carry)
	movl	$0, %eax	#, iftmp.16_11
.L128:
# LinkedList.cpp:351:         while ((p = *pp) || carry)
	testb	%al, %al	# iftmp.16_11
	je	.L129	#,
# LinkedList.cpp:353:             if (p)
	cmpq	$0, -32(%rbp)	#, p
	je	.L130	#,
# LinkedList.cpp:354:                 p->data = p->data * i + carry; //每一位都乘i,同时考虑进位，也可后面再集中进位
	movq	-32(%rbp), %rax	# p, tmp98
	movl	(%rax), %eax	# p_26->data, _1
# LinkedList.cpp:354:                 p->data = p->data * i + carry; //每一位都乘i,同时考虑进位，也可后面再集中进位
	imull	-56(%rbp), %eax	# i, _1
	movl	%eax, %edx	# _1, _2
# LinkedList.cpp:354:                 p->data = p->data * i + carry; //每一位都乘i,同时考虑进位，也可后面再集中进位
	movl	-52(%rbp), %eax	# carry, tmp99
	addl	%eax, %edx	# tmp99, _3
# LinkedList.cpp:354:                 p->data = p->data * i + carry; //每一位都乘i,同时考虑进位，也可后面再集中进位
	movq	-32(%rbp), %rax	# p, tmp100
	movl	%edx, (%rax)	# _3, p_26->data
	jmp	.L131	#
.L130:
# LinkedList.cpp:356:                 p = *pp = new LinkNode(carry);
	movl	$16, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp101, _32
	movl	-52(%rbp), %eax	# carry, tmp102
	movl	%eax, %esi	# tmp102,
	movq	%rbx, %rdi	# _32,
	call	_ZN4NodeC1Ei	#
# LinkedList.cpp:356:                 p = *pp = new LinkNode(carry);
	movq	-40(%rbp), %rax	# pp, tmp103
	movq	%rbx, (%rax)	# _32, *pp_7
# LinkedList.cpp:356:                 p = *pp = new LinkNode(carry);
	movq	-40(%rbp), %rax	# pp, tmp104
	movq	(%rax), %rax	# *pp_7, tmp105
	movq	%rax, -32(%rbp)	# tmp105, p
.L131:
# LinkedList.cpp:357:             carry = p->data / 10;
	movq	-32(%rbp), %rax	# p, tmp106
	movl	(%rax), %eax	# p_8->data, _4
# LinkedList.cpp:357:             carry = p->data / 10;
	movslq	%eax, %rdx	# _4, tmp107
	imulq	$1717986919, %rdx, %rdx	#, tmp107, tmp108
	shrq	$32, %rdx	#, tmp109
	sarl	$2, %edx	#, tmp110
	sarl	$31, %eax	#, tmp111
	subl	%eax, %edx	# tmp111, tmp110
	movl	%edx, %eax	# tmp110, tmp112
	movl	%eax, -52(%rbp)	# tmp112, carry
# LinkedList.cpp:358:             p->data = p->data % 10;
	movq	-32(%rbp), %rax	# p, tmp113
	movl	(%rax), %ecx	# p_8->data, _5
# LinkedList.cpp:358:             p->data = p->data % 10;
	movslq	%ecx, %rax	# _5, tmp114
	imulq	$1717986919, %rax, %rax	#, tmp114, tmp115
	shrq	$32, %rax	#, tmp116
	movl	%eax, %edx	# tmp116, tmp117
	sarl	$2, %edx	#, tmp117
	movl	%ecx, %eax	# _5, tmp118
	sarl	$31, %eax	#, tmp118
	subl	%eax, %edx	# tmp118, _6
	movl	%edx, %eax	# _6, tmp119
	sall	$2, %eax	#, tmp119
	addl	%edx, %eax	# _6, tmp119
	addl	%eax, %eax	# tmp120
	subl	%eax, %ecx	# tmp119, _5
	movl	%ecx, %edx	# _5, _6
# LinkedList.cpp:358:             p->data = p->data % 10;
	movq	-32(%rbp), %rax	# p, tmp121
	movl	%edx, (%rax)	# _6, p_8->data
# LinkedList.cpp:359:             pp = &p->next;
	movq	-32(%rbp), %rax	# p, tmp125
	addq	$8, %rax	#, tmp124
	movq	%rax, -40(%rbp)	# tmp124, pp
# LinkedList.cpp:351:         while ((p = *pp) || carry)
	jmp	.L132	#
.L129:
# LinkedList.cpp:347:     for (int i = 1, carry; i <= num; i++)
	addl	$1, -56(%rbp)	#, i
	jmp	.L133	#
.L125:
# LinkedList.cpp:362:     return ReverseRecursively(head);
	leaq	-48(%rbp), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	_Z18ReverseRecursivelyRP4Node	#
# LinkedList.cpp:383: }
	movq	-24(%rbp), %rsi	# D.65394, tmp129
	xorq	%fs:40, %rsi	# MEM[(<address-space-1> long unsigned int *)40B], tmp129
	je	.L135	#,
	call	__stack_chk_fail@PLT	#
.L135:
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3005:
	.size	_Z21FactorialLargeNumbersi, .-_Z21FactorialLargeNumbersi
	.globl	_Z15InitCircListValRP4Nodei
	.type	_Z15InitCircListValRP4Nodei, @function
_Z15InitCircListValRP4Nodei:
.LFB3006:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# Head, Head
	movl	%esi, -44(%rbp)	# sum, sum
# LinkedList.cpp:386:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	movl	$16, %edi	#,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp91, _1
# LinkedList.cpp:386:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	movq	-40(%rbp), %rax	# Head, tmp92
	movq	%rdx, (%rax)	# _1, *Head_14(D)
# LinkedList.cpp:386:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	movq	-40(%rbp), %rax	# Head, tmp93
	movq	(%rax), %rax	# *Head_14(D), _2
# LinkedList.cpp:386:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	testq	%rax, %rax	# _2
	sete	%al	#, retval.17_16
# LinkedList.cpp:386:     if (!(Head = (LinkList)malloc(sizeof(LinkNode))))
	testb	%al, %al	# retval.17_16
	je	.L137	#,
# LinkedList.cpp:388:         cout << "Memory allocation failed" << endl;
	leaq	.LC1(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _3
# LinkedList.cpp:388:         cout << "Memory allocation failed" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	movq	%rdx, %rdi	# _3,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:389:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L137:
# LinkedList.cpp:391:     Head->next = Head;
	movq	-40(%rbp), %rax	# Head, tmp95
	movq	(%rax), %rax	# *Head_14(D), _4
# LinkedList.cpp:391:     Head->next = Head;
	movq	-40(%rbp), %rdx	# Head, tmp96
	movq	(%rdx), %rdx	# *Head_14(D), _5
# LinkedList.cpp:391:     Head->next = Head;
	movq	%rdx, 8(%rax)	# _5, _4->next
# LinkedList.cpp:392:     LinkList Last = Head, cur;
	movq	-40(%rbp), %rax	# Head, tmp97
	movq	(%rax), %rax	# *Head_14(D), tmp98
	movq	%rax, -16(%rbp)	# tmp98, Last
# LinkedList.cpp:393:     for (int i = 0; i < sum; i++)
	movl	$0, -20(%rbp)	#, i
.L140:
# LinkedList.cpp:393:     for (int i = 0; i < sum; i++)
	movl	-20(%rbp), %eax	# i, tmp99
	cmpl	-44(%rbp), %eax	# sum, tmp99
	jge	.L138	#,
# LinkedList.cpp:395:         cur = (LinkList)malloc(sizeof(LinkNode));
	movl	$16, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp100, cur
# LinkedList.cpp:396:         if (!cur)
	cmpq	$0, -8(%rbp)	#, cur
	jne	.L139	#,
# LinkedList.cpp:398:             cout << "Memory allocation failed" << endl;
	leaq	.LC1(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _6
# LinkedList.cpp:398:             cout << "Memory allocation failed" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	movq	%rdx, %rdi	# _6,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:399:             exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L139:
# LinkedList.cpp:401:         Last->next = cur;
	movq	-16(%rbp), %rax	# Last, tmp102
	movq	-8(%rbp), %rdx	# cur, tmp103
	movq	%rdx, 8(%rax)	# tmp103, Last_9->next
# LinkedList.cpp:402:         cin >> cur->data;
	movq	-8(%rbp), %rax	# cur, _7
	movq	%rax, %rsi	# _7,
	leaq	_ZSt3cin(%rip), %rdi	#,
	call	_ZNSirsERi@PLT	#
# LinkedList.cpp:404:         Last = cur; //更新尾指针
	movq	-8(%rbp), %rax	# cur, tmp104
	movq	%rax, -16(%rbp)	# tmp104, Last
# LinkedList.cpp:393:     for (int i = 0; i < sum; i++)
	addl	$1, -20(%rbp)	#, i
	jmp	.L140	#
.L138:
# LinkedList.cpp:406:     Last->next = Head;
	movq	-40(%rbp), %rax	# Head, tmp105
	movq	(%rax), %rdx	# *Head_14(D), _8
# LinkedList.cpp:406:     Last->next = Head;
	movq	-16(%rbp), %rax	# Last, tmp106
	movq	%rdx, 8(%rax)	# _8, Last_9->next
# LinkedList.cpp:407: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3006:
	.size	_Z15InitCircListValRP4Nodei, .-_Z15InitCircListValRP4Nodei
	.globl	_Z13PrintCircListRP4Node
	.type	_Z13PrintCircListRP4Node, @function
_Z13PrintCircListRP4Node:
.LFB3007:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
# LinkedList.cpp:410:     LinkList p = Head->next;
	movq	-24(%rbp), %rax	# Head, tmp86
	movq	(%rax), %rax	# *Head_8(D), _1
# LinkedList.cpp:410:     LinkList p = Head->next;
	movq	8(%rax), %rax	# _1->next, tmp87
	movq	%rax, -8(%rbp)	# tmp87, p
.L143:
# LinkedList.cpp:412:     while (p != Head)
	movq	-24(%rbp), %rax	# Head, tmp88
	movq	(%rax), %rax	# *Head_8(D), _2
# LinkedList.cpp:412:     while (p != Head)
	cmpq	%rax, -8(%rbp)	# _2, p
	je	.L142	#,
# LinkedList.cpp:414:         cout << p->data << ' ';
	movq	-8(%rbp), %rax	# p, tmp89
	movl	(%rax), %eax	# p_5->data, _3
	movl	%eax, %esi	# _3,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEi@PLT	#
	movl	$32, %esi	#,
	movq	%rax, %rdi	# _4,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
# LinkedList.cpp:415:         p = p->next;
	movq	-8(%rbp), %rax	# p, tmp90
	movq	8(%rax), %rax	# p_5->next, tmp91
	movq	%rax, -8(%rbp)	# tmp91, p
# LinkedList.cpp:412:     while (p != Head)
	jmp	.L143	#
.L142:
# LinkedList.cpp:417:     cout << '\n';
	movl	$10, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
# LinkedList.cpp:418: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3007:
	.size	_Z13PrintCircListRP4Node, .-_Z13PrintCircListRP4Node
	.globl	_Z12FreeCircListRP4Node
	.type	_Z12FreeCircListRP4Node, @function
_Z12FreeCircListRP4Node:
.LFB3008:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
# LinkedList.cpp:422:     LinkList p = Head->next, q;
	movq	-24(%rbp), %rax	# Head, tmp85
	movq	(%rax), %rax	# *Head_7(D), _1
# LinkedList.cpp:422:     LinkList p = Head->next, q;
	movq	8(%rax), %rax	# _1->next, tmp86
	movq	%rax, -16(%rbp)	# tmp86, p
.L146:
# LinkedList.cpp:424:     while (p != Head)
	movq	-24(%rbp), %rax	# Head, tmp87
	movq	(%rax), %rax	# *Head_7(D), _2
# LinkedList.cpp:424:     while (p != Head)
	cmpq	%rax, -16(%rbp)	# _2, p
	je	.L145	#,
# LinkedList.cpp:426:         q = p->next;
	movq	-16(%rbp), %rax	# p, tmp88
	movq	8(%rax), %rax	# p_4->next, tmp89
	movq	%rax, -8(%rbp)	# tmp89, q
# LinkedList.cpp:427:         free(p);
	movq	-16(%rbp), %rax	# p, tmp90
	movq	%rax, %rdi	# tmp90,
	call	free@PLT	#
# LinkedList.cpp:428:         p = q;
	movq	-8(%rbp), %rax	# q, tmp91
	movq	%rax, -16(%rbp)	# tmp91, p
# LinkedList.cpp:424:     while (p != Head)
	jmp	.L146	#
.L145:
# LinkedList.cpp:430:     free(Head);
	movq	-24(%rbp), %rax	# Head, tmp92
	movq	(%rax), %rax	# *Head_7(D), _3
	movq	%rax, %rdi	# _3,
	call	free@PLT	#
# LinkedList.cpp:431: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3008:
	.size	_Z12FreeCircListRP4Node, .-_Z12FreeCircListRP4Node
	.globl	_Z14InsertCircListRP4Nodeii
	.type	_Z14InsertCircListRP4Nodeii, @function
_Z14InsertCircListRP4Nodeii:
.LFB3009:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# Head, Head
	movl	%esi, -44(%rbp)	# loc, loc
	movl	%edx, -48(%rbp)	# x, x
# LinkedList.cpp:434:     if (loc < 1)
	cmpl	$0, -44(%rbp)	#, loc
	jg	.L148	#,
# LinkedList.cpp:435:         return false;
	movl	$0, %eax	#, _7
	jmp	.L149	#
.L148:
# LinkedList.cpp:436:     LinkList p = Head;
	movq	-40(%rbp), %rax	# Head, tmp88
	movq	(%rax), %rax	# *Head_11(D), tmp89
	movq	%rax, -16(%rbp)	# tmp89, p
# LinkedList.cpp:437:     int i = 0;
	movl	$0, -20(%rbp)	#, i
.L151:
# LinkedList.cpp:438:     while (p->next != Head && i < loc - 1) //超出则插在表尾
	movq	-16(%rbp), %rax	# p, tmp90
	movq	8(%rax), %rdx	# p_5->next, _1
# LinkedList.cpp:438:     while (p->next != Head && i < loc - 1) //超出则插在表尾
	movq	-40(%rbp), %rax	# Head, tmp91
	movq	(%rax), %rax	# *Head_11(D), _2
# LinkedList.cpp:438:     while (p->next != Head && i < loc - 1) //超出则插在表尾
	cmpq	%rax, %rdx	# _2, _1
	je	.L150	#,
# LinkedList.cpp:438:     while (p->next != Head && i < loc - 1) //超出则插在表尾
	movl	-44(%rbp), %eax	# loc, tmp92
	subl	$1, %eax	#, _3
# LinkedList.cpp:438:     while (p->next != Head && i < loc - 1) //超出则插在表尾
	cmpl	%eax, -20(%rbp)	# _3, i
	jge	.L150	#,
# LinkedList.cpp:440:         p = p->next;
	movq	-16(%rbp), %rax	# p, tmp93
	movq	8(%rax), %rax	# p_5->next, tmp94
	movq	%rax, -16(%rbp)	# tmp94, p
# LinkedList.cpp:441:         i++;
	addl	$1, -20(%rbp)	#, i
# LinkedList.cpp:438:     while (p->next != Head && i < loc - 1) //超出则插在表尾
	jmp	.L151	#
.L150:
# LinkedList.cpp:443:     LinkList cur = (LinkList)malloc(sizeof(LinkNode));
	movl	$16, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp95, cur
# LinkedList.cpp:444:     cur->data = x;
	movq	-8(%rbp), %rax	# cur, tmp96
	movl	-48(%rbp), %edx	# x, tmp97
	movl	%edx, (%rax)	# tmp97, cur_17->data
# LinkedList.cpp:445:     cur->next = p->next;
	movq	-16(%rbp), %rax	# p, tmp98
	movq	8(%rax), %rdx	# p_5->next, _4
# LinkedList.cpp:445:     cur->next = p->next;
	movq	-8(%rbp), %rax	# cur, tmp99
	movq	%rdx, 8(%rax)	# _4, cur_17->next
# LinkedList.cpp:446:     p->next = cur;
	movq	-16(%rbp), %rax	# p, tmp100
	movq	-8(%rbp), %rdx	# cur, tmp101
	movq	%rdx, 8(%rax)	# tmp101, p_5->next
# LinkedList.cpp:447:     return true;
	movl	$1, %eax	#, _7
.L149:
# LinkedList.cpp:448: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3009:
	.size	_Z14InsertCircListRP4Nodeii, .-_Z14InsertCircListRP4Nodeii
	.globl	_Z14RemoveCircListRP4Nodei
	.type	_Z14RemoveCircListRP4Nodei, @function
_Z14RemoveCircListRP4Nodei:
.LFB3010:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# Head, Head
	movl	%esi, -44(%rbp)	# loc, loc
# LinkedList.cpp:451:     if (loc < 1)
	cmpl	$0, -44(%rbp)	#, loc
	jg	.L153	#,
# LinkedList.cpp:452:         return false;
	movl	$0, %eax	#, _9
	jmp	.L154	#
.L153:
# LinkedList.cpp:453:     LinkList p = Head, q;
	movq	-40(%rbp), %rax	# Head, tmp90
	movq	(%rax), %rax	# *Head_13(D), tmp91
	movq	%rax, -16(%rbp)	# tmp91, p
# LinkedList.cpp:454:     int i = 0;
	movl	$0, -20(%rbp)	#, i
.L156:
# LinkedList.cpp:455:     while (p->next != Head && i < loc - 1)
	movq	-16(%rbp), %rax	# p, tmp92
	movq	8(%rax), %rdx	# p_7->next, _1
# LinkedList.cpp:455:     while (p->next != Head && i < loc - 1)
	movq	-40(%rbp), %rax	# Head, tmp93
	movq	(%rax), %rax	# *Head_13(D), _2
# LinkedList.cpp:455:     while (p->next != Head && i < loc - 1)
	cmpq	%rax, %rdx	# _2, _1
	je	.L155	#,
# LinkedList.cpp:455:     while (p->next != Head && i < loc - 1)
	movl	-44(%rbp), %eax	# loc, tmp94
	subl	$1, %eax	#, _3
# LinkedList.cpp:455:     while (p->next != Head && i < loc - 1)
	cmpl	%eax, -20(%rbp)	# _3, i
	jge	.L155	#,
# LinkedList.cpp:457:         p = p->next;
	movq	-16(%rbp), %rax	# p, tmp95
	movq	8(%rax), %rax	# p_7->next, tmp96
	movq	%rax, -16(%rbp)	# tmp96, p
# LinkedList.cpp:458:         i++;
	addl	$1, -20(%rbp)	#, i
# LinkedList.cpp:455:     while (p->next != Head && i < loc - 1)
	jmp	.L156	#
.L155:
# LinkedList.cpp:460:     if (p->next == Head) //Loc太大
	movq	-16(%rbp), %rax	# p, tmp97
	movq	8(%rax), %rdx	# p_7->next, _4
# LinkedList.cpp:460:     if (p->next == Head) //Loc太大
	movq	-40(%rbp), %rax	# Head, tmp98
	movq	(%rax), %rax	# *Head_13(D), _5
# LinkedList.cpp:460:     if (p->next == Head) //Loc太大
	cmpq	%rax, %rdx	# _5, _4
	jne	.L157	#,
# LinkedList.cpp:461:         return false;
	movl	$0, %eax	#, _9
	jmp	.L154	#
.L157:
# LinkedList.cpp:462:     q = p->next;
	movq	-16(%rbp), %rax	# p, tmp99
	movq	8(%rax), %rax	# p_7->next, tmp100
	movq	%rax, -8(%rbp)	# tmp100, q
# LinkedList.cpp:463:     p->next = q->next;
	movq	-8(%rbp), %rax	# q, tmp101
	movq	8(%rax), %rdx	# q_18->next, _6
# LinkedList.cpp:463:     p->next = q->next;
	movq	-16(%rbp), %rax	# p, tmp102
	movq	%rdx, 8(%rax)	# _6, p_7->next
# LinkedList.cpp:464:     free(q);
	movq	-8(%rbp), %rax	# q, tmp103
	movq	%rax, %rdi	# tmp103,
	call	free@PLT	#
# LinkedList.cpp:465:     return true;
	movl	$1, %eax	#, _9
.L154:
# LinkedList.cpp:466: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3010:
	.size	_Z14RemoveCircListRP4Nodei, .-_Z14RemoveCircListRP4Nodei
	.globl	_Z12JosephCircleRP4Nodeiii
	.type	_Z12JosephCircleRP4Nodeiii, @function
_Z12JosephCircleRP4Nodeiii:
.LFB3011:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# Head, Head
	movl	%esi, -44(%rbp)	# begin, begin
	movl	%edx, -48(%rbp)	# gap, gap
	movl	%ecx, -52(%rbp)	# sum, sum
# LinkedList.cpp:469:     if (begin < 1 || gap < 1 || sum < 1)
	cmpl	$0, -44(%rbp)	#, begin
	jle	.L169	#,
# LinkedList.cpp:469:     if (begin < 1 || gap < 1 || sum < 1)
	cmpl	$0, -48(%rbp)	#, gap
	jle	.L169	#,
# LinkedList.cpp:469:     if (begin < 1 || gap < 1 || sum < 1)
	cmpl	$0, -52(%rbp)	#, sum
	jle	.L169	#,
# LinkedList.cpp:472:     LinkList p = Head, q;
	movq	-40(%rbp), %rax	# Head, tmp90
	movq	(%rax), %rax	# *Head_22(D), tmp91
	movq	%rax, -16(%rbp)	# tmp91, p
# LinkedList.cpp:473:     for (int i = 0; i < begin - 1; i++) //快进到第begin-1个结点
	movl	$0, -28(%rbp)	#, i
.L163:
# LinkedList.cpp:473:     for (int i = 0; i < begin - 1; i++) //快进到第begin-1个结点
	movl	-44(%rbp), %eax	# begin, tmp92
	subl	$1, %eax	#, _1
# LinkedList.cpp:473:     for (int i = 0; i < begin - 1; i++) //快进到第begin-1个结点
	cmpl	%eax, -28(%rbp)	# _1, i
	jge	.L162	#,
# LinkedList.cpp:474:         p = p->next;
	movq	-16(%rbp), %rax	# p, tmp93
	movq	8(%rax), %rax	# p_9->next, tmp94
	movq	%rax, -16(%rbp)	# tmp94, p
# LinkedList.cpp:473:     for (int i = 0; i < begin - 1; i++) //快进到第begin-1个结点
	addl	$1, -28(%rbp)	#, i
	jmp	.L163	#
.L162:
# LinkedList.cpp:475:     for (int i = 0; i < sum; i++)
	movl	$0, -24(%rbp)	#, i
.L168:
# LinkedList.cpp:475:     for (int i = 0; i < sum; i++)
	movl	-24(%rbp), %eax	# i, tmp95
	cmpl	-52(%rbp), %eax	# sum, tmp95
	jge	.L164	#,
# LinkedList.cpp:477:         for (int j = 0; j < gap - 1; j++) //报gap-1次数,到达被删结点前
	movl	$0, -20(%rbp)	#, j
.L167:
# LinkedList.cpp:477:         for (int j = 0; j < gap - 1; j++) //报gap-1次数,到达被删结点前
	movl	-48(%rbp), %eax	# gap, tmp96
	subl	$1, %eax	#, _2
# LinkedList.cpp:477:         for (int j = 0; j < gap - 1; j++) //报gap-1次数,到达被删结点前
	cmpl	%eax, -20(%rbp)	# _2, j
	jge	.L165	#,
# LinkedList.cpp:479:             p = p->next;
	movq	-16(%rbp), %rax	# p, tmp97
	movq	8(%rax), %rax	# p_11->next, tmp98
	movq	%rax, -16(%rbp)	# tmp98, p
# LinkedList.cpp:480:             if (p->next == Head) //跳过头结点
	movq	-16(%rbp), %rax	# p, tmp99
	movq	8(%rax), %rdx	# p_29->next, _3
# LinkedList.cpp:480:             if (p->next == Head) //跳过头结点
	movq	-40(%rbp), %rax	# Head, tmp100
	movq	(%rax), %rax	# *Head_22(D), _4
# LinkedList.cpp:480:             if (p->next == Head) //跳过头结点
	cmpq	%rax, %rdx	# _4, _3
	jne	.L166	#,
# LinkedList.cpp:482:                 p = p->next;
	movq	-16(%rbp), %rax	# p, tmp101
	movq	8(%rax), %rax	# p_29->next, tmp102
	movq	%rax, -16(%rbp)	# tmp102, p
.L166:
# LinkedList.cpp:477:         for (int j = 0; j < gap - 1; j++) //报gap-1次数,到达被删结点前
	addl	$1, -20(%rbp)	#, j
	jmp	.L167	#
.L165:
# LinkedList.cpp:485:         cout << p->next->data << ' ';
	movq	-16(%rbp), %rax	# p, tmp103
	movq	8(%rax), %rax	# p_11->next, _5
# LinkedList.cpp:485:         cout << p->next->data << ' ';
	movl	(%rax), %eax	# _5->data, _6
	movl	%eax, %esi	# _6,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEi@PLT	#
	movl	$32, %esi	#,
	movq	%rax, %rdi	# _7,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
# LinkedList.cpp:486:         q = p->next;
	movq	-16(%rbp), %rax	# p, tmp104
	movq	8(%rax), %rax	# p_11->next, tmp105
	movq	%rax, -8(%rbp)	# tmp105, q
# LinkedList.cpp:487:         p->next = q->next; //p在起始结点前，不用移动
	movq	-8(%rbp), %rax	# q, tmp106
	movq	8(%rax), %rdx	# q_35->next, _8
# LinkedList.cpp:487:         p->next = q->next; //p在起始结点前，不用移动
	movq	-16(%rbp), %rax	# p, tmp107
	movq	%rdx, 8(%rax)	# _8, p_11->next
# LinkedList.cpp:488:         free(q);
	movq	-8(%rbp), %rax	# q, tmp108
	movq	%rax, %rdi	# tmp108,
	call	free@PLT	#
# LinkedList.cpp:475:     for (int i = 0; i < sum; i++)
	addl	$1, -24(%rbp)	#, i
	jmp	.L168	#
.L164:
# LinkedList.cpp:490:     cout << '\n';
	movl	$10, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
	jmp	.L158	#
.L169:
# LinkedList.cpp:470:         return;
	nop	
.L158:
# LinkedList.cpp:491: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3011:
	.size	_Z12JosephCircleRP4Nodeiii, .-_Z12JosephCircleRP4Nodeiii
	.globl	_Z20MergeTwoOrderedListsRP4NodeS1_
	.type	_Z20MergeTwoOrderedListsRP4NodeS1_, @function
_Z20MergeTwoOrderedListsRP4NodeS1_:
.LFB3012:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
# LinkedList.cpp:494:     if (!a || b && a->data > b->data)
	movq	-24(%rbp), %rax	# a, tmp95
	movq	(%rax), %rax	# *a_15(D), _1
# LinkedList.cpp:494:     if (!a || b && a->data > b->data)
	testq	%rax, %rax	# _1
	je	.L171	#,
# LinkedList.cpp:494:     if (!a || b && a->data > b->data)
	movq	-32(%rbp), %rax	# b, tmp96
	movq	(%rax), %rax	# *b_16(D), _2
# LinkedList.cpp:494:     if (!a || b && a->data > b->data)
	testq	%rax, %rax	# _2
	je	.L172	#,
# LinkedList.cpp:494:     if (!a || b && a->data > b->data)
	movq	-24(%rbp), %rax	# a, tmp97
	movq	(%rax), %rax	# *a_15(D), _3
# LinkedList.cpp:494:     if (!a || b && a->data > b->data)
	movl	(%rax), %edx	# _3->data, _4
# LinkedList.cpp:494:     if (!a || b && a->data > b->data)
	movq	-32(%rbp), %rax	# b, tmp98
	movq	(%rax), %rax	# *b_16(D), _5
# LinkedList.cpp:494:     if (!a || b && a->data > b->data)
	movl	(%rax), %eax	# _5->data, _6
# LinkedList.cpp:494:     if (!a || b && a->data > b->data)
	cmpl	%eax, %edx	# _6, _4
	jle	.L172	#,
.L171:
# LinkedList.cpp:495:         swap(a, b);
	movq	-32(%rbp), %rdx	# b, tmp99
	movq	-24(%rbp), %rax	# a, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	_ZSt4swapIP4NodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_	#
.L172:
# LinkedList.cpp:497:     if (a)
	movq	-24(%rbp), %rax	# a, tmp101
	movq	(%rax), %rax	# *a_15(D), _7
# LinkedList.cpp:497:     if (a)
	testq	%rax, %rax	# _7
	je	.L173	#,
# LinkedList.cpp:498:         a->next = MergeTwoOrderedLists(a->next, b);
	movq	-24(%rbp), %rax	# a, tmp102
	movq	(%rax), %rax	# *a_15(D), _8
# LinkedList.cpp:498:         a->next = MergeTwoOrderedLists(a->next, b);
	leaq	8(%rax), %rdx	#, _9
# LinkedList.cpp:498:         a->next = MergeTwoOrderedLists(a->next, b);
	movq	-24(%rbp), %rax	# a, tmp103
	movq	(%rax), %rbx	# *a_15(D), _10
# LinkedList.cpp:498:         a->next = MergeTwoOrderedLists(a->next, b);
	movq	-32(%rbp), %rax	# b, tmp104
	movq	%rax, %rsi	# tmp104,
	movq	%rdx, %rdi	# _9,
	call	_Z20MergeTwoOrderedListsRP4NodeS1_	#
# LinkedList.cpp:498:         a->next = MergeTwoOrderedLists(a->next, b);
	movq	%rax, 8(%rbx)	# _11, _10->next
.L173:
# LinkedList.cpp:499:     return a;
	movq	-24(%rbp), %rax	# a, tmp105
	movq	(%rax), %rax	# *a_15(D), _21
# LinkedList.cpp:500: }
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3012:
	.size	_Z20MergeTwoOrderedListsRP4NodeS1_, .-_Z20MergeTwoOrderedListsRP4NodeS1_
	.section	.rodata
.LC10:
	.string	"Please input"
.LC11:
	.string	"numbers"
	.text
	.globl	_Z11DblLInitValRP7Dblnodei
	.type	_Z11DblLInitValRP7Dblnodei, @function
_Z11DblLInitValRP7Dblnodei:
.LFB3013:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# sum, sum
# LinkedList.cpp:503:     if (!(Head = new DblNode))
	movl	$24, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rdx	# tmp95, _1
# LinkedList.cpp:503:     if (!(Head = new DblNode))
	movq	-24(%rbp), %rax	# Head, tmp96
	movq	%rdx, (%rax)	# _1, *Head_17(D)
# LinkedList.cpp:503:     if (!(Head = new DblNode))
	movq	-24(%rbp), %rax	# Head, tmp97
	movq	(%rax), %rax	# *Head_17(D), _2
# LinkedList.cpp:503:     if (!(Head = new DblNode))
	testq	%rax, %rax	# _2
	sete	%al	#, retval.18_19
# LinkedList.cpp:503:     if (!(Head = new DblNode))
	testb	%al, %al	# retval.18_19
	je	.L176	#,
# LinkedList.cpp:505:         cout << "Memory allocation failed" << endl;
	leaq	.LC1(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _3
# LinkedList.cpp:505:         cout << "Memory allocation failed" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	movq	%rdx, %rdi	# _3,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:506:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L176:
# LinkedList.cpp:508:     DblList cur, Pre = Head;
	movq	-24(%rbp), %rax	# Head, tmp99
	movq	(%rax), %rax	# *Head_17(D), tmp100
	movq	%rax, -16(%rbp)	# tmp100, Pre
# LinkedList.cpp:509:     cout << "Please input" << sum << "numbers" << endl;
	leaq	.LC10(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _4
# LinkedList.cpp:509:     cout << "Please input" << sum << "numbers" << endl;
	movl	-28(%rbp), %eax	# sum, tmp101
	movl	%eax, %esi	# tmp101,
	movq	%rdx, %rdi	# _4,
	call	_ZNSolsEi@PLT	#
	leaq	.LC11(%rip), %rsi	#,
	movq	%rax, %rdi	# _5,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _6
# LinkedList.cpp:509:     cout << "Please input" << sum << "numbers" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	movq	%rdx, %rdi	# _6,
	call	_ZNSolsEPFRSoS_E@PLT	#
.L178:
# LinkedList.cpp:510:     while (sum--)
	movl	-28(%rbp), %eax	# sum, sum.20_7
	leal	-1(%rax), %edx	#, tmp103
	movl	%edx, -28(%rbp)	# tmp103, sum
	testl	%eax, %eax	# sum.20_7
	setne	%al	#, retval.19_30
	testb	%al, %al	# retval.19_30
	je	.L177	#,
# LinkedList.cpp:512:         cur = new DblNode;
	movl	$24, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, -8(%rbp)	# _34, cur
# LinkedList.cpp:513:         Pre->next = cur;
	movq	-16(%rbp), %rax	# Pre, tmp105
	movq	-8(%rbp), %rdx	# cur, tmp106
	movq	%rdx, 16(%rax)	# tmp106, Pre_12->next
# LinkedList.cpp:514:         cur->pred = Pre;
	movq	-8(%rbp), %rax	# cur, tmp107
	movq	-16(%rbp), %rdx	# Pre, tmp108
	movq	%rdx, 8(%rax)	# tmp108, cur_35->pred
# LinkedList.cpp:515:         cin >> cur->data;
	movq	-8(%rbp), %rax	# cur, _8
	movq	%rax, %rsi	# _8,
	leaq	_ZSt3cin(%rip), %rdi	#,
	call	_ZNSirsERi@PLT	#
# LinkedList.cpp:516:         Pre = cur;
	movq	-8(%rbp), %rax	# cur, tmp109
	movq	%rax, -16(%rbp)	# tmp109, Pre
# LinkedList.cpp:510:     while (sum--)
	jmp	.L178	#
.L177:
# LinkedList.cpp:518:     Pre->next = Head;
	movq	-24(%rbp), %rax	# Head, tmp110
	movq	(%rax), %rdx	# *Head_17(D), _9
# LinkedList.cpp:518:     Pre->next = Head;
	movq	-16(%rbp), %rax	# Pre, tmp111
	movq	%rdx, 16(%rax)	# _9, Pre_12->next
# LinkedList.cpp:519:     Head->pred = Pre;
	movq	-24(%rbp), %rax	# Head, tmp112
	movq	(%rax), %rax	# *Head_17(D), _10
# LinkedList.cpp:519:     Head->pred = Pre;
	movq	-16(%rbp), %rdx	# Pre, tmp113
	movq	%rdx, 8(%rax)	# tmp113, _10->pred
# LinkedList.cpp:520: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3013:
	.size	_Z11DblLInitValRP7Dblnodei, .-_Z11DblLInitValRP7Dblnodei
	.globl	_Z9DblLPrintRP7Dblnodei
	.type	_Z9DblLPrintRP7Dblnodei, @function
_Z9DblLPrintRP7Dblnodei:
.LFB3014:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# flag, flag
# LinkedList.cpp:523:     DblList p = flag ? Head->next : Head->pred;
	cmpl	$0, -28(%rbp)	#, flag
	je	.L180	#,
# LinkedList.cpp:523:     DblList p = flag ? Head->next : Head->pred;
	movq	-24(%rbp), %rax	# Head, tmp88
	movq	(%rax), %rax	# *Head_12(D), _1
# LinkedList.cpp:523:     DblList p = flag ? Head->next : Head->pred;
	movq	16(%rax), %rax	# _1->next, iftmp.21_8
	jmp	.L181	#
.L180:
# LinkedList.cpp:523:     DblList p = flag ? Head->next : Head->pred;
	movq	-24(%rbp), %rax	# Head, tmp89
	movq	(%rax), %rax	# *Head_12(D), _2
# LinkedList.cpp:523:     DblList p = flag ? Head->next : Head->pred;
	movq	8(%rax), %rax	# _2->pred, iftmp.21_8
.L181:
# LinkedList.cpp:523:     DblList p = flag ? Head->next : Head->pred;
	movq	%rax, -8(%rbp)	# iftmp.21_8, p
.L185:
# LinkedList.cpp:524:     while (p != Head)
	movq	-24(%rbp), %rax	# Head, tmp90
	movq	(%rax), %rax	# *Head_12(D), _3
# LinkedList.cpp:524:     while (p != Head)
	cmpq	%rax, -8(%rbp)	# _3, p
	je	.L182	#,
# LinkedList.cpp:526:         cout << p->data << ' ';
	movq	-8(%rbp), %rax	# p, tmp91
	movl	(%rax), %eax	# p_6->data, _4
	movl	%eax, %esi	# _4,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEi@PLT	#
	movl	$32, %esi	#,
	movq	%rax, %rdi	# _5,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
# LinkedList.cpp:527:         (flag) ? p = p->next : p = p->pred;
	cmpl	$0, -28(%rbp)	#, flag
	je	.L183	#,
# LinkedList.cpp:527:         (flag) ? p = p->next : p = p->pred;
	movq	-8(%rbp), %rax	# p, tmp92
	movq	16(%rax), %rax	# p_6->next, tmp93
	movq	%rax, -8(%rbp)	# tmp93, p
	jmp	.L185	#
.L183:
# LinkedList.cpp:527:         (flag) ? p = p->next : p = p->pred;
	movq	-8(%rbp), %rax	# p, tmp94
	movq	8(%rax), %rax	# p_6->pred, tmp95
	movq	%rax, -8(%rbp)	# tmp95, p
# LinkedList.cpp:524:     while (p != Head)
	jmp	.L185	#
.L182:
# LinkedList.cpp:529:     cout << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:530: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3014:
	.size	_Z9DblLPrintRP7Dblnodei, .-_Z9DblLPrintRP7Dblnodei
	.globl	_Z15DblLSearchByValRP7Dblnodeii
	.type	_Z15DblLSearchByValRP7Dblnodeii, @function
_Z15DblLSearchByValRP7Dblnodeii:
.LFB3015:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# x, x
	movl	%edx, -32(%rbp)	# flag, flag
# LinkedList.cpp:533:     DblList p = flag ? Head->next : Head->pred;
	cmpl	$0, -32(%rbp)	#, flag
	je	.L187	#,
# LinkedList.cpp:533:     DblList p = flag ? Head->next : Head->pred;
	movq	-24(%rbp), %rax	# Head, tmp90
	movq	(%rax), %rax	# *Head_12(D), _1
# LinkedList.cpp:533:     DblList p = flag ? Head->next : Head->pred;
	movq	16(%rax), %rax	# _1->next, iftmp.22_8
	jmp	.L188	#
.L187:
# LinkedList.cpp:533:     DblList p = flag ? Head->next : Head->pred;
	movq	-24(%rbp), %rax	# Head, tmp91
	movq	(%rax), %rax	# *Head_12(D), _2
# LinkedList.cpp:533:     DblList p = flag ? Head->next : Head->pred;
	movq	8(%rax), %rax	# _2->pred, iftmp.22_8
.L188:
# LinkedList.cpp:533:     DblList p = flag ? Head->next : Head->pred;
	movq	%rax, -8(%rbp)	# iftmp.22_8, p
.L192:
# LinkedList.cpp:534:     while (p != Head && p->data != x)
	movq	-24(%rbp), %rax	# Head, tmp92
	movq	(%rax), %rax	# *Head_12(D), _3
# LinkedList.cpp:534:     while (p != Head && p->data != x)
	cmpq	%rax, -8(%rbp)	# _3, p
	je	.L189	#,
# LinkedList.cpp:534:     while (p != Head && p->data != x)
	movq	-8(%rbp), %rax	# p, tmp93
	movl	(%rax), %eax	# p_6->data, _4
# LinkedList.cpp:534:     while (p != Head && p->data != x)
	cmpl	%eax, -28(%rbp)	# _4, x
	je	.L189	#,
# LinkedList.cpp:536:         flag ? p = p->next : p = p->pred;
	cmpl	$0, -32(%rbp)	#, flag
	je	.L190	#,
# LinkedList.cpp:536:         flag ? p = p->next : p = p->pred;
	movq	-8(%rbp), %rax	# p, tmp94
	movq	16(%rax), %rax	# p_6->next, tmp95
	movq	%rax, -8(%rbp)	# tmp95, p
	jmp	.L192	#
.L190:
# LinkedList.cpp:536:         flag ? p = p->next : p = p->pred;
	movq	-8(%rbp), %rax	# p, tmp96
	movq	8(%rax), %rax	# p_6->pred, tmp97
	movq	%rax, -8(%rbp)	# tmp97, p
# LinkedList.cpp:534:     while (p != Head && p->data != x)
	jmp	.L192	#
.L189:
# LinkedList.cpp:538:     if (p == Head)
	movq	-24(%rbp), %rax	# Head, tmp98
	movq	(%rax), %rax	# *Head_12(D), _5
# LinkedList.cpp:538:     if (p == Head)
	cmpq	%rax, -8(%rbp)	# _5, p
	jne	.L193	#,
# LinkedList.cpp:539:         return NULL;
	movl	$0, %eax	#, _9
	jmp	.L194	#
.L193:
# LinkedList.cpp:541:         return p;
	movq	-8(%rbp), %rax	# p, _9
.L194:
# LinkedList.cpp:542: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3015:
	.size	_Z15DblLSearchByValRP7Dblnodeii, .-_Z15DblLSearchByValRP7Dblnodeii
	.globl	_Z15DblLSearchByLocRP7Dblnodeii
	.type	_Z15DblLSearchByLocRP7Dblnodeii, @function
_Z15DblLSearchByLocRP7Dblnodeii:
.LFB3016:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# loc, loc
	movl	%edx, -32(%rbp)	# flag, flag
# LinkedList.cpp:545:     if (!loc)
	cmpl	$0, -28(%rbp)	#, loc
	jne	.L196	#,
# LinkedList.cpp:546:         return Head;
	movq	-24(%rbp), %rax	# Head, tmp92
	movq	(%rax), %rax	# *Head_16(D), _8
	jmp	.L197	#
.L196:
# LinkedList.cpp:547:     DblList p = flag ? Head->next : Head->pred;
	cmpl	$0, -32(%rbp)	#, flag
	je	.L198	#,
# LinkedList.cpp:547:     DblList p = flag ? Head->next : Head->pred;
	movq	-24(%rbp), %rax	# Head, tmp93
	movq	(%rax), %rax	# *Head_16(D), _1
# LinkedList.cpp:547:     DblList p = flag ? Head->next : Head->pred;
	movq	16(%rax), %rax	# _1->next, iftmp.23_9
	jmp	.L199	#
.L198:
# LinkedList.cpp:547:     DblList p = flag ? Head->next : Head->pred;
	movq	-24(%rbp), %rax	# Head, tmp94
	movq	(%rax), %rax	# *Head_16(D), _2
# LinkedList.cpp:547:     DblList p = flag ? Head->next : Head->pred;
	movq	8(%rax), %rax	# _2->pred, iftmp.23_9
.L199:
# LinkedList.cpp:547:     DblList p = flag ? Head->next : Head->pred;
	movq	%rax, -8(%rbp)	# iftmp.23_9, p
.L205:
# LinkedList.cpp:548:     while (--loc && p != Head)
	subl	$1, -28(%rbp)	#, loc
	cmpl	$0, -28(%rbp)	#, loc
	je	.L200	#,
# LinkedList.cpp:548:     while (--loc && p != Head)
	movq	-24(%rbp), %rax	# Head, tmp95
	movq	(%rax), %rax	# *Head_16(D), _3
# LinkedList.cpp:548:     while (--loc && p != Head)
	cmpq	%rax, -8(%rbp)	# _3, p
	je	.L200	#,
# LinkedList.cpp:548:     while (--loc && p != Head)
	movl	$1, %eax	#, iftmp.25_10
	jmp	.L201	#
.L200:
# LinkedList.cpp:548:     while (--loc && p != Head)
	movl	$0, %eax	#, iftmp.25_10
.L201:
# LinkedList.cpp:548:     while (--loc && p != Head)
	testb	%al, %al	# iftmp.25_10
	je	.L202	#,
# LinkedList.cpp:549:         p = flag ? p->next : p->pred;
	cmpl	$0, -32(%rbp)	#, flag
	je	.L203	#,
# LinkedList.cpp:549:         p = flag ? p->next : p->pred;
	movq	-8(%rbp), %rax	# p, tmp96
	movq	16(%rax), %rax	# p_7->next, iftmp.26_11
	jmp	.L204	#
.L203:
# LinkedList.cpp:549:         p = flag ? p->next : p->pred;
	movq	-8(%rbp), %rax	# p, tmp97
	movq	8(%rax), %rax	# p_7->pred, iftmp.26_11
.L204:
# LinkedList.cpp:549:         p = flag ? p->next : p->pred;
	movq	%rax, -8(%rbp)	# iftmp.26_11, p
# LinkedList.cpp:548:     while (--loc && p != Head)
	jmp	.L205	#
.L202:
# LinkedList.cpp:550:     if (p == Head)
	movq	-24(%rbp), %rax	# Head, tmp98
	movq	(%rax), %rax	# *Head_16(D), _4
# LinkedList.cpp:550:     if (p == Head)
	cmpq	%rax, -8(%rbp)	# _4, p
	jne	.L206	#,
# LinkedList.cpp:552:         cout << "Loc error" << endl;
	leaq	.LC2(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _5
# LinkedList.cpp:552:         cout << "Loc error" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	movq	%rdx, %rdi	# _5,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:553:         return NULL;
	movl	$0, %eax	#, _8
	jmp	.L197	#
.L206:
# LinkedList.cpp:556:         return p;
	movq	-8(%rbp), %rax	# p, _8
.L197:
# LinkedList.cpp:557: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3016:
	.size	_Z15DblLSearchByLocRP7Dblnodeii, .-_Z15DblLSearchByLocRP7Dblnodeii
	.globl	_Z10DblLInsertRP7Dblnodeiii
	.type	_Z10DblLInsertRP7Dblnodeiii, @function
_Z10DblLInsertRP7Dblnodeiii:
.LFB3017:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# loc, loc
	movl	%edx, -32(%rbp)	# x, x
	movl	%ecx, -36(%rbp)	# flag, flag
# LinkedList.cpp:560:     DblList p, q = new DblNode;
	movl	$24, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, -16(%rbp)	# _11, q
# LinkedList.cpp:561:     q->data = x;
	movq	-16(%rbp), %rax	# q, tmp93
	movl	-32(%rbp), %edx	# x, tmp94
	movl	%edx, (%rax)	# tmp94, q_12->data
# LinkedList.cpp:562:     if (p = DblLSearchByLoc(Head, loc - 1, flag)) //到达被删除结点
	movl	-28(%rbp), %eax	# loc, tmp95
	leal	-1(%rax), %ecx	#, _1
	movl	-36(%rbp), %edx	# flag, tmp96
	movq	-24(%rbp), %rax	# Head, tmp97
	movl	%ecx, %esi	# _1,
	movq	%rax, %rdi	# tmp97,
	call	_Z15DblLSearchByLocRP7Dblnodeii	#
	movq	%rax, -8(%rbp)	# _19, p
# LinkedList.cpp:562:     if (p = DblLSearchByLoc(Head, loc - 1, flag)) //到达被删除结点
	cmpq	$0, -8(%rbp)	#, p
	setne	%al	#, retval.27_21
# LinkedList.cpp:562:     if (p = DblLSearchByLoc(Head, loc - 1, flag)) //到达被删除结点
	testb	%al, %al	# retval.27_21
	je	.L208	#,
# LinkedList.cpp:564:         if (flag)
	cmpl	$0, -36(%rbp)	#, flag
	je	.L209	#,
# LinkedList.cpp:566:             q->next = p->next;
	movq	-8(%rbp), %rax	# p, tmp98
	movq	16(%rax), %rdx	# p_20->next, _2
# LinkedList.cpp:566:             q->next = p->next;
	movq	-16(%rbp), %rax	# q, tmp99
	movq	%rdx, 16(%rax)	# _2, q_12->next
# LinkedList.cpp:567:             q->next->pred = q;
	movq	-16(%rbp), %rax	# q, tmp100
	movq	16(%rax), %rax	# q_12->next, _3
# LinkedList.cpp:567:             q->next->pred = q;
	movq	-16(%rbp), %rdx	# q, tmp101
	movq	%rdx, 8(%rax)	# tmp101, _3->pred
# LinkedList.cpp:568:             p->next = q;
	movq	-8(%rbp), %rax	# p, tmp102
	movq	-16(%rbp), %rdx	# q, tmp103
	movq	%rdx, 16(%rax)	# tmp103, p_20->next
# LinkedList.cpp:569:             q->pred = p;
	movq	-16(%rbp), %rax	# q, tmp104
	movq	-8(%rbp), %rdx	# p, tmp105
	movq	%rdx, 8(%rax)	# tmp105, q_12->pred
	jmp	.L210	#
.L209:
# LinkedList.cpp:573:             q->pred = p->pred;
	movq	-8(%rbp), %rax	# p, tmp106
	movq	8(%rax), %rdx	# p_20->pred, _4
# LinkedList.cpp:573:             q->pred = p->pred;
	movq	-16(%rbp), %rax	# q, tmp107
	movq	%rdx, 8(%rax)	# _4, q_12->pred
# LinkedList.cpp:574:             q->pred->next = q;
	movq	-16(%rbp), %rax	# q, tmp108
	movq	8(%rax), %rax	# q_12->pred, _5
# LinkedList.cpp:574:             q->pred->next = q;
	movq	-16(%rbp), %rdx	# q, tmp109
	movq	%rdx, 16(%rax)	# tmp109, _5->next
# LinkedList.cpp:575:             p->pred = q;
	movq	-8(%rbp), %rax	# p, tmp110
	movq	-16(%rbp), %rdx	# q, tmp111
	movq	%rdx, 8(%rax)	# tmp111, p_20->pred
# LinkedList.cpp:576:             q->next = p;
	movq	-16(%rbp), %rax	# q, tmp112
	movq	-8(%rbp), %rdx	# p, tmp113
	movq	%rdx, 16(%rax)	# tmp113, q_12->next
.L210:
# LinkedList.cpp:578:         return true;
	movl	$1, %eax	#, _6
	jmp	.L211	#
.L208:
# LinkedList.cpp:581:         return false;
	movl	$0, %eax	#, _6
.L211:
# LinkedList.cpp:582: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3017:
	.size	_Z10DblLInsertRP7Dblnodeiii, .-_Z10DblLInsertRP7Dblnodeiii
	.globl	_Z15DblLDeleteByLocRP7Dblnodeii
	.type	_Z15DblLDeleteByLocRP7Dblnodeii, @function
_Z15DblLDeleteByLocRP7Dblnodeii:
.LFB3018:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Head, Head
	movl	%esi, -28(%rbp)	# loc, loc
	movl	%edx, -32(%rbp)	# flag, flag
# LinkedList.cpp:586:     if (p = DblLSearchByLoc(Head, loc, flag)) //直接到达被删结点
	movl	-32(%rbp), %edx	# flag, tmp91
	movl	-28(%rbp), %ecx	# loc, tmp92
	movq	-24(%rbp), %rax	# Head, tmp93
	movl	%ecx, %esi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	_Z15DblLSearchByLocRP7Dblnodeii	#
	movq	%rax, -8(%rbp)	# _13, p
# LinkedList.cpp:586:     if (p = DblLSearchByLoc(Head, loc, flag)) //直接到达被删结点
	cmpq	$0, -8(%rbp)	#, p
	setne	%al	#, retval.28_15
# LinkedList.cpp:586:     if (p = DblLSearchByLoc(Head, loc, flag)) //直接到达被删结点
	testb	%al, %al	# retval.28_15
	je	.L213	#,
# LinkedList.cpp:588:         p->pred->next = p->next;
	movq	-8(%rbp), %rax	# p, tmp94
	movq	8(%rax), %rax	# p_14->pred, _1
# LinkedList.cpp:588:         p->pred->next = p->next;
	movq	-8(%rbp), %rdx	# p, tmp95
	movq	16(%rdx), %rdx	# p_14->next, _2
# LinkedList.cpp:588:         p->pred->next = p->next;
	movq	%rdx, 16(%rax)	# _2, _1->next
# LinkedList.cpp:589:         p->next->pred = p->pred;
	movq	-8(%rbp), %rax	# p, tmp96
	movq	16(%rax), %rax	# p_14->next, _3
# LinkedList.cpp:589:         p->next->pred = p->pred;
	movq	-8(%rbp), %rdx	# p, tmp97
	movq	8(%rdx), %rdx	# p_14->pred, _4
# LinkedList.cpp:589:         p->next->pred = p->pred;
	movq	%rdx, 8(%rax)	# _4, _3->pred
# LinkedList.cpp:590:         delete p;
	movq	-8(%rbp), %rax	# p, p.29_19
# LinkedList.cpp:590:         delete p;
	testq	%rax, %rax	# p.29_19
	je	.L214	#,
# LinkedList.cpp:590:         delete p;
	movl	$24, %esi	#,
	movq	%rax, %rdi	# p.29_19,
	call	_ZdlPvm@PLT	#
.L214:
# LinkedList.cpp:591:         return true;
	movl	$1, %eax	#, _5
	jmp	.L215	#
.L213:
# LinkedList.cpp:594:         return false;
	movl	$0, %eax	#, _5
.L215:
# LinkedList.cpp:595: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3018:
	.size	_Z15DblLDeleteByLocRP7Dblnodeii, .-_Z15DblLDeleteByLocRP7Dblnodeii
	.globl	_Z9SListInitR5SListi
	.type	_Z9SListInitR5SListi, @function
_Z9SListInitR5SListi:
.LFB3019:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# SL, SL
	movl	%esi, -28(%rbp)	# maxSize, maxSize
# LinkedList.cpp:598:     SL.Elem = new SNode[maxSize + 1];
	movl	-28(%rbp), %eax	# maxSize, tmp101
	addl	$1, %eax	#, _1
	cltq
# LinkedList.cpp:598:     SL.Elem = new SNode[maxSize + 1];
	movabsq	$1152921504606846975, %rdx	#, tmp102
	cmpq	%rdx, %rax	# tmp102, _21
	ja	.L217	#,
# LinkedList.cpp:598:     SL.Elem = new SNode[maxSize + 1];
	salq	$3, %rax	#, iftmp.30_24
	movq	%rax, %rdi	# iftmp.30_24,
	call	_Znam@PLT	#
	movq	%rax, %rdx	# tmp103, _2
# LinkedList.cpp:598:     SL.Elem = new SNode[maxSize + 1];
	movq	-24(%rbp), %rax	# SL, tmp104
	movq	%rdx, (%rax)	# _2, SL_27(D)->Elem
# LinkedList.cpp:599:     if (!SL.Elem)
	movq	-24(%rbp), %rax	# SL, tmp105
	movq	(%rax), %rax	# SL_27(D)->Elem, _3
# LinkedList.cpp:599:     if (!SL.Elem)
	testq	%rax, %rax	# _3
	jne	.L219	#,
	jmp	.L222	#
.L217:
# LinkedList.cpp:598:     SL.Elem = new SNode[maxSize + 1];
	call	__cxa_throw_bad_array_new_length@PLT	#
.L222:
# LinkedList.cpp:601:         cout << "Memory allocation failed" << endl;
	leaq	.LC1(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _4
# LinkedList.cpp:601:         cout << "Memory allocation failed" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	movq	%rdx, %rdi	# _4,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:602:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L219:
# LinkedList.cpp:604:     for (int i = 0; i < maxSize + 1; i++)
	movl	$0, -4(%rbp)	#, i
.L221:
# LinkedList.cpp:604:     for (int i = 0; i < maxSize + 1; i++)
	movl	-28(%rbp), %eax	# maxSize, tmp107
	cmpl	-4(%rbp), %eax	# i, tmp107
	jl	.L220	#,
# LinkedList.cpp:606:         SL.Elem[i].link = i + 1;
	movq	-24(%rbp), %rax	# SL, tmp108
	movq	(%rax), %rax	# SL_27(D)->Elem, _5
# LinkedList.cpp:606:         SL.Elem[i].link = i + 1;
	movl	-4(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, _6
# LinkedList.cpp:606:         SL.Elem[i].link = i + 1;
	salq	$3, %rdx	#, _7
	addq	%rdx, %rax	# _7, _8
# LinkedList.cpp:606:         SL.Elem[i].link = i + 1;
	movl	-4(%rbp), %edx	# i, tmp110
	addl	$1, %edx	#, _9
# LinkedList.cpp:606:         SL.Elem[i].link = i + 1;
	movl	%edx, 4(%rax)	# _9, _8->link
# LinkedList.cpp:607:         SL.Elem[i].data = 0;
	movq	-24(%rbp), %rax	# SL, tmp111
	movq	(%rax), %rax	# SL_27(D)->Elem, _10
# LinkedList.cpp:607:         SL.Elem[i].data = 0;
	movl	-4(%rbp), %edx	# i, tmp112
	movslq	%edx, %rdx	# tmp112, _11
# LinkedList.cpp:607:         SL.Elem[i].data = 0;
	salq	$3, %rdx	#, _12
	addq	%rdx, %rax	# _12, _13
# LinkedList.cpp:607:         SL.Elem[i].data = 0;
	movl	$0, (%rax)	#, _13->data
# LinkedList.cpp:604:     for (int i = 0; i < maxSize + 1; i++)
	addl	$1, -4(%rbp)	#, i
	jmp	.L221	#
.L220:
# LinkedList.cpp:609:     SL.Elem[maxSize].link = 0; //*用来判断备用结点是否有剩余
	movq	-24(%rbp), %rax	# SL, tmp113
	movq	(%rax), %rax	# SL_27(D)->Elem, _14
# LinkedList.cpp:609:     SL.Elem[maxSize].link = 0; //*用来判断备用结点是否有剩余
	movl	-28(%rbp), %edx	# maxSize, tmp114
	movslq	%edx, %rdx	# tmp114, _15
# LinkedList.cpp:609:     SL.Elem[maxSize].link = 0; //*用来判断备用结点是否有剩余
	salq	$3, %rdx	#, _16
	addq	%rdx, %rax	# _16, _17
# LinkedList.cpp:609:     SL.Elem[maxSize].link = 0; //*用来判断备用结点是否有剩余
	movl	$0, 4(%rax)	#, _17->link
# LinkedList.cpp:610:     SL.size = 0;               //链表长度为0
	movq	-24(%rbp), %rax	# SL, tmp115
	movl	$0, 8(%rax)	#, SL_27(D)->size
# LinkedList.cpp:611: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3019:
	.size	_Z9SListInitR5SListi, .-_Z9SListInitR5SListi
	.section	.rodata
.LC12:
	.string	"Capacity is full"
	.text
	.globl	_Z11MallocSNodeR5SList
	.type	_Z11MallocSNodeR5SList, @function
_Z11MallocSNodeR5SList:
.LFB3020:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# SL, SL
# LinkedList.cpp:614:     int link = SL.Elem[0].link;
	movq	-24(%rbp), %rax	# SL, tmp94
	movq	(%rax), %rax	# SL_13(D)->Elem, _1
# LinkedList.cpp:614:     int link = SL.Elem[0].link;
	movl	4(%rax), %eax	# _1->link, tmp95
	movl	%eax, -4(%rbp)	# tmp95, link
# LinkedList.cpp:615:     SL.Elem[0].link = SL.Elem[link].link; //摘除备用链表中的空闲结点；
	movq	-24(%rbp), %rax	# SL, tmp96
	movq	(%rax), %rax	# SL_13(D)->Elem, _2
# LinkedList.cpp:615:     SL.Elem[0].link = SL.Elem[link].link; //摘除备用链表中的空闲结点；
	movl	-4(%rbp), %edx	# link, tmp97
	movslq	%edx, %rdx	# tmp97, _3
# LinkedList.cpp:615:     SL.Elem[0].link = SL.Elem[link].link; //摘除备用链表中的空闲结点；
	salq	$3, %rdx	#, _4
	addq	%rax, %rdx	# _2, _5
# LinkedList.cpp:615:     SL.Elem[0].link = SL.Elem[link].link; //摘除备用链表中的空闲结点；
	movq	-24(%rbp), %rax	# SL, tmp98
	movq	(%rax), %rax	# SL_13(D)->Elem, _6
# LinkedList.cpp:615:     SL.Elem[0].link = SL.Elem[link].link; //摘除备用链表中的空闲结点；
	movl	4(%rdx), %edx	# _5->link, _7
# LinkedList.cpp:615:     SL.Elem[0].link = SL.Elem[link].link; //摘除备用链表中的空闲结点；
	movl	%edx, 4(%rax)	# _7, _6->link
# LinkedList.cpp:616:     if (link)
	cmpl	$0, -4(%rbp)	#, link
	je	.L224	#,
# LinkedList.cpp:617:         SL.size++;
	movq	-24(%rbp), %rax	# SL, tmp99
	movl	8(%rax), %eax	# SL_13(D)->size, _8
# LinkedList.cpp:617:         SL.size++;
	leal	1(%rax), %edx	#, _9
	movq	-24(%rbp), %rax	# SL, tmp100
	movl	%edx, 8(%rax)	# _9, SL_13(D)->size
	jmp	.L225	#
.L224:
# LinkedList.cpp:619:         cout << "Capacity is full" << endl;
	leaq	.LC12(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _10
# LinkedList.cpp:619:         cout << "Capacity is full" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	movq	%rdx, %rdi	# _10,
	call	_ZNSolsEPFRSoS_E@PLT	#
.L225:
# LinkedList.cpp:620:     return link;
	movl	-4(%rbp), %eax	# link, _20
# LinkedList.cpp:621: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3020:
	.size	_Z11MallocSNodeR5SList, .-_Z11MallocSNodeR5SList
	.globl	_Z9FreeSNodeR5SListi
	.type	_Z9FreeSNodeR5SListi, @function
_Z9FreeSNodeR5SListi:
.LFB3021:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# SL, SL
	movl	%esi, -12(%rbp)	# k, k
# LinkedList.cpp:624:     SL.Elem[k].link = SL.Elem[0].link;
	movq	-8(%rbp), %rax	# SL, tmp91
	movq	(%rax), %rax	# SL_11(D)->Elem, _1
# LinkedList.cpp:624:     SL.Elem[k].link = SL.Elem[0].link;
	movq	-8(%rbp), %rdx	# SL, tmp92
	movq	(%rdx), %rdx	# SL_11(D)->Elem, _2
# LinkedList.cpp:624:     SL.Elem[k].link = SL.Elem[0].link;
	movl	-12(%rbp), %ecx	# k, tmp93
	movslq	%ecx, %rcx	# tmp93, _3
# LinkedList.cpp:624:     SL.Elem[k].link = SL.Elem[0].link;
	salq	$3, %rcx	#, _4
	addq	%rcx, %rdx	# _4, _5
# LinkedList.cpp:624:     SL.Elem[k].link = SL.Elem[0].link;
	movl	4(%rax), %eax	# _1->link, _6
# LinkedList.cpp:624:     SL.Elem[k].link = SL.Elem[0].link;
	movl	%eax, 4(%rdx)	# _6, _5->link
# LinkedList.cpp:625:     SL.Elem[0].link = k;
	movq	-8(%rbp), %rax	# SL, tmp94
	movq	(%rax), %rax	# SL_11(D)->Elem, _7
# LinkedList.cpp:625:     SL.Elem[0].link = k;
	movl	-12(%rbp), %edx	# k, tmp95
	movl	%edx, 4(%rax)	# tmp95, _7->link
# LinkedList.cpp:626:     SL.size--;
	movq	-8(%rbp), %rax	# SL, tmp96
	movl	8(%rax), %eax	# SL_11(D)->size, _8
# LinkedList.cpp:626:     SL.size--;
	leal	-1(%rax), %edx	#, _9
	movq	-8(%rbp), %rax	# SL, tmp97
	movl	%edx, 8(%rax)	# _9, SL_11(D)->size
# LinkedList.cpp:627: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3021:
	.size	_Z9FreeSNodeR5SListi, .-_Z9FreeSNodeR5SListi
	.globl	_Z12SListInitValR5SListi
	.type	_Z12SListInitValR5SListi, @function
_Z12SListInitValR5SListi:
.LFB3022:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# SL, SL
	movl	%esi, -44(%rbp)	# size, size
# LinkedList.cpp:631:     link = SL.Head = MallocSNode(SL); //保存首元结点下标
	movq	-40(%rbp), %rax	# SL, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_Z11MallocSNodeR5SList	#
# LinkedList.cpp:631:     link = SL.Head = MallocSNode(SL); //保存首元结点下标
	movq	-40(%rbp), %rdx	# SL, tmp104
	movl	%eax, 12(%rdx)	# _1, SL_27(D)->Head
# LinkedList.cpp:631:     link = SL.Head = MallocSNode(SL); //保存首元结点下标
	movq	-40(%rbp), %rax	# SL, tmp105
	movl	12(%rax), %eax	# SL_27(D)->Head, tmp106
	movl	%eax, -24(%rbp)	# tmp106, link
# LinkedList.cpp:632:     cin >> SL.Elem[link].data;
	movq	-40(%rbp), %rax	# SL, tmp107
	movq	(%rax), %rax	# SL_27(D)->Elem, _2
# LinkedList.cpp:632:     cin >> SL.Elem[link].data;
	movl	-24(%rbp), %edx	# link, tmp108
	movslq	%edx, %rdx	# tmp108, _3
# LinkedList.cpp:632:     cin >> SL.Elem[link].data;
	salq	$3, %rdx	#, _4
	addq	%rdx, %rax	# _4, _5
# LinkedList.cpp:632:     cin >> SL.Elem[link].data;
	movq	%rax, %rsi	# _6,
	leaq	_ZSt3cin(%rip), %rdi	#,
	call	_ZNSirsERi@PLT	#
# LinkedList.cpp:633:     for (int i = 0; i < size - 1; i++)
	movl	$0, -20(%rbp)	#, i
.L232:
# LinkedList.cpp:633:     for (int i = 0; i < size - 1; i++)
	movl	-44(%rbp), %eax	# size, tmp109
	subl	$1, %eax	#, _7
# LinkedList.cpp:633:     for (int i = 0; i < size - 1; i++)
	cmpl	%eax, -20(%rbp)	# _7, i
	jge	.L229	#,
# LinkedList.cpp:635:         link = SL.Elem[link].link = MallocSNode(SL); //申请新结点
	movq	-40(%rbp), %rax	# SL, tmp110
	movq	(%rax), %rax	# SL_27(D)->Elem, _8
# LinkedList.cpp:635:         link = SL.Elem[link].link = MallocSNode(SL); //申请新结点
	movl	-24(%rbp), %edx	# link, tmp111
	movslq	%edx, %rdx	# tmp111, _9
# LinkedList.cpp:635:         link = SL.Elem[link].link = MallocSNode(SL); //申请新结点
	salq	$3, %rdx	#, _10
	leaq	(%rax,%rdx), %rbx	#, _11
# LinkedList.cpp:635:         link = SL.Elem[link].link = MallocSNode(SL); //申请新结点
	movq	-40(%rbp), %rax	# SL, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_Z11MallocSNodeR5SList	#
# LinkedList.cpp:635:         link = SL.Elem[link].link = MallocSNode(SL); //申请新结点
	movl	%eax, 4(%rbx)	# _12, _11->link
# LinkedList.cpp:635:         link = SL.Elem[link].link = MallocSNode(SL); //申请新结点
	movl	4(%rbx), %eax	# _11->link, tmp113
	movl	%eax, -24(%rbp)	# tmp113, link
# LinkedList.cpp:636:         if (!link)
	cmpl	$0, -24(%rbp)	#, link
	je	.L233	#,
# LinkedList.cpp:638:         cin >> SL.Elem[link].data;
	movq	-40(%rbp), %rax	# SL, tmp114
	movq	(%rax), %rax	# SL_27(D)->Elem, _13
# LinkedList.cpp:638:         cin >> SL.Elem[link].data;
	movl	-24(%rbp), %edx	# link, tmp115
	movslq	%edx, %rdx	# tmp115, _14
# LinkedList.cpp:638:         cin >> SL.Elem[link].data;
	salq	$3, %rdx	#, _15
	addq	%rdx, %rax	# _15, _16
# LinkedList.cpp:638:         cin >> SL.Elem[link].data;
	movq	%rax, %rsi	# _17,
	leaq	_ZSt3cin(%rip), %rdi	#,
	call	_ZNSirsERi@PLT	#
# LinkedList.cpp:633:     for (int i = 0; i < size - 1; i++)
	addl	$1, -20(%rbp)	#, i
	jmp	.L232	#
.L229:
# LinkedList.cpp:640:     SL.Elem[link].link = 0; //相当于链表指向NULL
	movq	-40(%rbp), %rax	# SL, tmp116
	movq	(%rax), %rax	# SL_27(D)->Elem, _18
# LinkedList.cpp:640:     SL.Elem[link].link = 0; //相当于链表指向NULL
	movl	-24(%rbp), %edx	# link, tmp117
	movslq	%edx, %rdx	# tmp117, _19
# LinkedList.cpp:640:     SL.Elem[link].link = 0; //相当于链表指向NULL
	salq	$3, %rdx	#, _20
	addq	%rdx, %rax	# _20, _21
# LinkedList.cpp:640:     SL.Elem[link].link = 0; //相当于链表指向NULL
	movl	$0, 4(%rax)	#, _21->link
	jmp	.L228	#
.L233:
# LinkedList.cpp:637:             return;
	nop	
.L228:
# LinkedList.cpp:641: }
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3022:
	.size	_Z12SListInitValR5SListi, .-_Z12SListInitValR5SListi
	.globl	_Z10PrintSListR5SList
	.type	_Z10PrintSListR5SList, @function
_Z10PrintSListR5SList:
.LFB3023:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# SL, SL
# LinkedList.cpp:644:     int link = SL.Head;
	movq	-24(%rbp), %rax	# SL, tmp92
	movl	12(%rax), %eax	# SL_14(D)->Head, tmp93
	movl	%eax, -4(%rbp)	# tmp93, link
.L236:
# LinkedList.cpp:645:     while (link)
	cmpl	$0, -4(%rbp)	#, link
	je	.L235	#,
# LinkedList.cpp:647:         cout << SL.Elem[link].data << ' ';
	movq	-24(%rbp), %rax	# SL, tmp94
	movq	(%rax), %rax	# SL_14(D)->Elem, _1
# LinkedList.cpp:647:         cout << SL.Elem[link].data << ' ';
	movl	-4(%rbp), %edx	# link, tmp95
	movslq	%edx, %rdx	# tmp95, _2
# LinkedList.cpp:647:         cout << SL.Elem[link].data << ' ';
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# LinkedList.cpp:647:         cout << SL.Elem[link].data << ' ';
	movl	(%rax), %eax	# _4->data, _5
	movl	%eax, %esi	# _5,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEi@PLT	#
	movl	$32, %esi	#,
	movq	%rax, %rdi	# _6,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
# LinkedList.cpp:648:         link = SL.Elem[link].link;
	movq	-24(%rbp), %rax	# SL, tmp96
	movq	(%rax), %rax	# SL_14(D)->Elem, _7
# LinkedList.cpp:648:         link = SL.Elem[link].link;
	movl	-4(%rbp), %edx	# link, tmp97
	movslq	%edx, %rdx	# tmp97, _8
# LinkedList.cpp:648:         link = SL.Elem[link].link;
	salq	$3, %rdx	#, _9
	addq	%rdx, %rax	# _9, _10
# LinkedList.cpp:648:         link = SL.Elem[link].link;
	movl	4(%rax), %eax	# _10->link, tmp98
	movl	%eax, -4(%rbp)	# tmp98, link
# LinkedList.cpp:645:     while (link)
	jmp	.L236	#
.L235:
# LinkedList.cpp:650:     cout << '\n';
	movl	$10, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
# LinkedList.cpp:651: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3023:
	.size	_Z10PrintSListR5SList, .-_Z10PrintSListR5SList
	.section	.rodata
.LC13:
	.string	"loc error"
	.text
	.globl	_Z8SLInsertR5SListii
	.type	_Z8SLInsertR5SListii, @function
_Z8SLInsertR5SListii:
.LFB3024:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# SL, SL
	movl	%esi, -28(%rbp)	# loc, loc
	movl	%edx, -32(%rbp)	# x, x
# LinkedList.cpp:654:     if (loc < 1 || loc > SL.size + 1)
	cmpl	$0, -28(%rbp)	#, loc
	jle	.L238	#,
# LinkedList.cpp:654:     if (loc < 1 || loc > SL.size + 1)
	movq	-24(%rbp), %rax	# SL, tmp113
	movl	8(%rax), %eax	# SL_36(D)->size, _1
# LinkedList.cpp:654:     if (loc < 1 || loc > SL.size + 1)
	addl	$1, %eax	#, _2
# LinkedList.cpp:654:     if (loc < 1 || loc > SL.size + 1)
	cmpl	%eax, -28(%rbp)	# _2, loc
	jle	.L239	#,
.L238:
# LinkedList.cpp:656:         cout << "loc error" << endl;
	leaq	.LC13(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _3
# LinkedList.cpp:656:         cout << "loc error" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	movq	%rdx, %rdi	# _3,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:657:         return;
	jmp	.L237	#
.L239:
# LinkedList.cpp:659:     int link = MallocSNode(SL), temp = SL.Head;
	movq	-24(%rbp), %rax	# SL, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_Z11MallocSNodeR5SList	#
	movl	%eax, -4(%rbp)	# _38, link
# LinkedList.cpp:659:     int link = MallocSNode(SL), temp = SL.Head;
	movq	-24(%rbp), %rax	# SL, tmp116
	movl	12(%rax), %eax	# SL_36(D)->Head, tmp117
	movl	%eax, -12(%rbp)	# tmp117, temp
# LinkedList.cpp:660:     if (!link)
	cmpl	$0, -4(%rbp)	#, link
	je	.L245	#,
# LinkedList.cpp:662:     SL.Elem[link].data = x;
	movq	-24(%rbp), %rax	# SL, tmp118
	movq	(%rax), %rax	# SL_36(D)->Elem, _4
# LinkedList.cpp:662:     SL.Elem[link].data = x;
	movl	-4(%rbp), %edx	# link, tmp119
	movslq	%edx, %rdx	# tmp119, _5
# LinkedList.cpp:662:     SL.Elem[link].data = x;
	salq	$3, %rdx	#, _6
	addq	%rax, %rdx	# _4, _7
# LinkedList.cpp:662:     SL.Elem[link].data = x;
	movl	-32(%rbp), %eax	# x, tmp120
	movl	%eax, (%rdx)	# tmp120, _7->data
# LinkedList.cpp:663:     if (loc == 1)
	cmpl	$1, -28(%rbp)	#, loc
	jne	.L242	#,
# LinkedList.cpp:665:         SL.Elem[link].link = SL.Head;
	movq	-24(%rbp), %rax	# SL, tmp121
	movq	(%rax), %rax	# SL_36(D)->Elem, _8
# LinkedList.cpp:665:         SL.Elem[link].link = SL.Head;
	movl	-4(%rbp), %edx	# link, tmp122
	movslq	%edx, %rdx	# tmp122, _9
# LinkedList.cpp:665:         SL.Elem[link].link = SL.Head;
	salq	$3, %rdx	#, _10
	addq	%rax, %rdx	# _8, _11
# LinkedList.cpp:665:         SL.Elem[link].link = SL.Head;
	movq	-24(%rbp), %rax	# SL, tmp123
	movl	12(%rax), %eax	# SL_36(D)->Head, _12
# LinkedList.cpp:665:         SL.Elem[link].link = SL.Head;
	movl	%eax, 4(%rdx)	# _12, _11->link
# LinkedList.cpp:666:         SL.Head = link;
	movq	-24(%rbp), %rax	# SL, tmp124
	movl	-4(%rbp), %edx	# link, tmp125
	movl	%edx, 12(%rax)	# tmp125, SL_36(D)->Head
	jmp	.L237	#
.L242:
# LinkedList.cpp:670:         for (int i = 0; i < loc - 2; i++)
	movl	$0, -8(%rbp)	#, i
.L244:
# LinkedList.cpp:670:         for (int i = 0; i < loc - 2; i++)
	movl	-28(%rbp), %eax	# loc, tmp126
	subl	$2, %eax	#, _13
# LinkedList.cpp:670:         for (int i = 0; i < loc - 2; i++)
	cmpl	%eax, -8(%rbp)	# _13, i
	jge	.L243	#,
# LinkedList.cpp:671:             temp = SL.Elem[temp].link;
	movq	-24(%rbp), %rax	# SL, tmp127
	movq	(%rax), %rax	# SL_36(D)->Elem, _14
# LinkedList.cpp:671:             temp = SL.Elem[temp].link;
	movl	-12(%rbp), %edx	# temp, tmp128
	movslq	%edx, %rdx	# tmp128, _15
# LinkedList.cpp:671:             temp = SL.Elem[temp].link;
	salq	$3, %rdx	#, _16
	addq	%rdx, %rax	# _16, _17
# LinkedList.cpp:671:             temp = SL.Elem[temp].link;
	movl	4(%rax), %eax	# _17->link, tmp129
	movl	%eax, -12(%rbp)	# tmp129, temp
# LinkedList.cpp:670:         for (int i = 0; i < loc - 2; i++)
	addl	$1, -8(%rbp)	#, i
	jmp	.L244	#
.L243:
# LinkedList.cpp:672:         SL.Elem[link].link = SL.Elem[temp].link;
	movq	-24(%rbp), %rax	# SL, tmp130
	movq	(%rax), %rax	# SL_36(D)->Elem, _18
# LinkedList.cpp:672:         SL.Elem[link].link = SL.Elem[temp].link;
	movl	-12(%rbp), %edx	# temp, tmp131
	movslq	%edx, %rdx	# tmp131, _19
# LinkedList.cpp:672:         SL.Elem[link].link = SL.Elem[temp].link;
	salq	$3, %rdx	#, _20
	leaq	(%rax,%rdx), %rcx	#, _21
# LinkedList.cpp:672:         SL.Elem[link].link = SL.Elem[temp].link;
	movq	-24(%rbp), %rax	# SL, tmp132
	movq	(%rax), %rax	# SL_36(D)->Elem, _22
# LinkedList.cpp:672:         SL.Elem[link].link = SL.Elem[temp].link;
	movl	-4(%rbp), %edx	# link, tmp133
	movslq	%edx, %rdx	# tmp133, _23
# LinkedList.cpp:672:         SL.Elem[link].link = SL.Elem[temp].link;
	salq	$3, %rdx	#, _24
	addq	%rax, %rdx	# _22, _25
# LinkedList.cpp:672:         SL.Elem[link].link = SL.Elem[temp].link;
	movl	4(%rcx), %eax	# _21->link, _26
# LinkedList.cpp:672:         SL.Elem[link].link = SL.Elem[temp].link;
	movl	%eax, 4(%rdx)	# _26, _25->link
# LinkedList.cpp:673:         SL.Elem[temp].link = link;
	movq	-24(%rbp), %rax	# SL, tmp134
	movq	(%rax), %rax	# SL_36(D)->Elem, _27
# LinkedList.cpp:673:         SL.Elem[temp].link = link;
	movl	-12(%rbp), %edx	# temp, tmp135
	movslq	%edx, %rdx	# tmp135, _28
# LinkedList.cpp:673:         SL.Elem[temp].link = link;
	salq	$3, %rdx	#, _29
	addq	%rax, %rdx	# _27, _30
# LinkedList.cpp:673:         SL.Elem[temp].link = link;
	movl	-4(%rbp), %eax	# link, tmp136
	movl	%eax, 4(%rdx)	# tmp136, _30->link
	jmp	.L237	#
.L245:
# LinkedList.cpp:661:         return;
	nop	
.L237:
# LinkedList.cpp:675: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3024:
	.size	_Z8SLInsertR5SListii, .-_Z8SLInsertR5SListii
	.globl	_Z8SLRemoveR5SListi
	.type	_Z8SLRemoveR5SListi, @function
_Z8SLRemoveR5SListi:
.LFB3025:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# SL, SL
	movl	%esi, -28(%rbp)	# loc, loc
# LinkedList.cpp:678:     int temp = SL.Head, Temp2;
	movq	-24(%rbp), %rax	# SL, tmp107
	movl	12(%rax), %eax	# SL_30(D)->Head, tmp108
	movl	%eax, -12(%rbp)	# tmp108, temp
# LinkedList.cpp:679:     if (loc < 1 || loc > SL.size)
	cmpl	$0, -28(%rbp)	#, loc
	jle	.L247	#,
# LinkedList.cpp:679:     if (loc < 1 || loc > SL.size)
	movq	-24(%rbp), %rax	# SL, tmp109
	movl	8(%rax), %eax	# SL_30(D)->size, _1
# LinkedList.cpp:679:     if (loc < 1 || loc > SL.size)
	cmpl	%eax, -28(%rbp)	# _1, loc
	jle	.L248	#,
.L247:
# LinkedList.cpp:681:         cout << "Loc error" << endl;
	leaq	.LC2(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _2
# LinkedList.cpp:681:         cout << "Loc error" << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	movq	%rdx, %rdi	# _2,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:682:         return;
	jmp	.L246	#
.L248:
# LinkedList.cpp:684:     if (loc == 1)
	cmpl	$1, -28(%rbp)	#, loc
	jne	.L250	#,
# LinkedList.cpp:686:         SL.Head = SL.Elem[temp].link;
	movq	-24(%rbp), %rax	# SL, tmp111
	movq	(%rax), %rax	# SL_30(D)->Elem, _3
# LinkedList.cpp:686:         SL.Head = SL.Elem[temp].link;
	movl	-12(%rbp), %edx	# temp, tmp112
	movslq	%edx, %rdx	# tmp112, _4
# LinkedList.cpp:686:         SL.Head = SL.Elem[temp].link;
	salq	$3, %rdx	#, _5
	addq	%rdx, %rax	# _5, _6
# LinkedList.cpp:686:         SL.Head = SL.Elem[temp].link;
	movl	4(%rax), %edx	# _6->link, _7
# LinkedList.cpp:686:         SL.Head = SL.Elem[temp].link;
	movq	-24(%rbp), %rax	# SL, tmp113
	movl	%edx, 12(%rax)	# _7, SL_30(D)->Head
# LinkedList.cpp:687:         FreeSNode(SL, temp);
	movl	-12(%rbp), %edx	# temp, tmp114
	movq	-24(%rbp), %rax	# SL, tmp115
	movl	%edx, %esi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	_Z9FreeSNodeR5SListi	#
	jmp	.L246	#
.L250:
# LinkedList.cpp:691:         for (int i = 0; i < loc - 2; i++)
	movl	$0, -8(%rbp)	#, i
.L252:
# LinkedList.cpp:691:         for (int i = 0; i < loc - 2; i++)
	movl	-28(%rbp), %eax	# loc, tmp116
	subl	$2, %eax	#, _8
# LinkedList.cpp:691:         for (int i = 0; i < loc - 2; i++)
	cmpl	%eax, -8(%rbp)	# _8, i
	jge	.L251	#,
# LinkedList.cpp:692:             temp = SL.Elem[temp].link;
	movq	-24(%rbp), %rax	# SL, tmp117
	movq	(%rax), %rax	# SL_30(D)->Elem, _9
# LinkedList.cpp:692:             temp = SL.Elem[temp].link;
	movl	-12(%rbp), %edx	# temp, tmp118
	movslq	%edx, %rdx	# tmp118, _10
# LinkedList.cpp:692:             temp = SL.Elem[temp].link;
	salq	$3, %rdx	#, _11
	addq	%rdx, %rax	# _11, _12
# LinkedList.cpp:692:             temp = SL.Elem[temp].link;
	movl	4(%rax), %eax	# _12->link, tmp119
	movl	%eax, -12(%rbp)	# tmp119, temp
# LinkedList.cpp:691:         for (int i = 0; i < loc - 2; i++)
	addl	$1, -8(%rbp)	#, i
	jmp	.L252	#
.L251:
# LinkedList.cpp:693:         Temp2 = SL.Elem[temp].link;
	movq	-24(%rbp), %rax	# SL, tmp120
	movq	(%rax), %rax	# SL_30(D)->Elem, _13
# LinkedList.cpp:693:         Temp2 = SL.Elem[temp].link;
	movl	-12(%rbp), %edx	# temp, tmp121
	movslq	%edx, %rdx	# tmp121, _14
# LinkedList.cpp:693:         Temp2 = SL.Elem[temp].link;
	salq	$3, %rdx	#, _15
	addq	%rdx, %rax	# _15, _16
# LinkedList.cpp:693:         Temp2 = SL.Elem[temp].link;
	movl	4(%rax), %eax	# _16->link, tmp122
	movl	%eax, -4(%rbp)	# tmp122, Temp2
# LinkedList.cpp:694:         SL.Elem[temp].link = SL.Elem[Temp2].link;
	movq	-24(%rbp), %rax	# SL, tmp123
	movq	(%rax), %rax	# SL_30(D)->Elem, _17
# LinkedList.cpp:694:         SL.Elem[temp].link = SL.Elem[Temp2].link;
	movl	-4(%rbp), %edx	# Temp2, tmp124
	movslq	%edx, %rdx	# tmp124, _18
# LinkedList.cpp:694:         SL.Elem[temp].link = SL.Elem[Temp2].link;
	salq	$3, %rdx	#, _19
	leaq	(%rax,%rdx), %rcx	#, _20
# LinkedList.cpp:694:         SL.Elem[temp].link = SL.Elem[Temp2].link;
	movq	-24(%rbp), %rax	# SL, tmp125
	movq	(%rax), %rax	# SL_30(D)->Elem, _21
# LinkedList.cpp:694:         SL.Elem[temp].link = SL.Elem[Temp2].link;
	movl	-12(%rbp), %edx	# temp, tmp126
	movslq	%edx, %rdx	# tmp126, _22
# LinkedList.cpp:694:         SL.Elem[temp].link = SL.Elem[Temp2].link;
	salq	$3, %rdx	#, _23
	addq	%rax, %rdx	# _21, _24
# LinkedList.cpp:694:         SL.Elem[temp].link = SL.Elem[Temp2].link;
	movl	4(%rcx), %eax	# _20->link, _25
# LinkedList.cpp:694:         SL.Elem[temp].link = SL.Elem[Temp2].link;
	movl	%eax, 4(%rdx)	# _25, _24->link
# LinkedList.cpp:695:         FreeSNode(SL, Temp2);
	movl	-4(%rbp), %edx	# Temp2, tmp127
	movq	-24(%rbp), %rax	# SL, tmp128
	movl	%edx, %esi	# tmp127,
	movq	%rax, %rdi	# tmp128,
	call	_Z9FreeSNodeR5SListi	#
.L246:
# LinkedList.cpp:697: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3025:
	.size	_Z8SLRemoveR5SListi, .-_Z8SLRemoveR5SListi
	.globl	_Z5InputRP8TermNodePdPii
	.type	_Z5InputRP8TermNodePdPii, @function
_Z5InputRP8TermNodePdPii:
.LFB3026:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# PL, PL
	movq	%rsi, -80(%rbp)	# C, C
	movq	%rdx, -88(%rbp)	# E, E
	movl	%ecx, -92(%rbp)	# num, num
# LinkedList.cpp:700:     Polynomial p, prev, Dummyhead = new Term;
	movl	$24, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp109, _33
	movq	%rbx, %rdi	# _33,
	call	_ZN8TermNodeC1Ev	#
	movq	%rbx, -32(%rbp)	# _33, Dummyhead
# LinkedList.cpp:701:     for (int i = 0; i < num; i++)
	movl	$0, -52(%rbp)	#, i
.L259:
# LinkedList.cpp:701:     for (int i = 0; i < num; i++)
	movl	-52(%rbp), %eax	# i, tmp110
	cmpl	-92(%rbp), %eax	# num, tmp110
	jge	.L254	#,
# LinkedList.cpp:703:         p = Dummyhead->next;
	movq	-32(%rbp), %rax	# Dummyhead, tmp111
	movq	16(%rax), %rax	# Dummyhead_36->next, tmp112
	movq	%rax, -48(%rbp)	# tmp112, p
# LinkedList.cpp:704:         prev = Dummyhead;
	movq	-32(%rbp), %rax	# Dummyhead, tmp113
	movq	%rax, -40(%rbp)	# tmp113, prev
.L256:
# LinkedList.cpp:705:         while (p && p->exp > E[i])
	cmpq	$0, -48(%rbp)	#, p
	je	.L255	#,
# LinkedList.cpp:705:         while (p && p->exp > E[i])
	movq	-48(%rbp), %rax	# p, tmp114
	movl	8(%rax), %edx	# p_26->exp, _1
# LinkedList.cpp:705:         while (p && p->exp > E[i])
	movl	-52(%rbp), %eax	# i, tmp115
	cltq
# LinkedList.cpp:705:         while (p && p->exp > E[i])
	leaq	0(,%rax,4), %rcx	#, _3
	movq	-88(%rbp), %rax	# E, tmp116
	addq	%rcx, %rax	# _3, _4
	movl	(%rax), %eax	# *_4, _5
# LinkedList.cpp:705:         while (p && p->exp > E[i])
	cmpl	%eax, %edx	# _5, _1
	jle	.L255	#,
# LinkedList.cpp:707:             prev = p;
	movq	-48(%rbp), %rax	# p, tmp117
	movq	%rax, -40(%rbp)	# tmp117, prev
# LinkedList.cpp:708:             p = p->next;
	movq	-48(%rbp), %rax	# p, tmp118
	movq	16(%rax), %rax	# p_26->next, tmp119
	movq	%rax, -48(%rbp)	# tmp119, p
# LinkedList.cpp:705:         while (p && p->exp > E[i])
	jmp	.L256	#
.L255:
# LinkedList.cpp:710:         if (p && p->exp == E[i])
	cmpq	$0, -48(%rbp)	#, p
	je	.L257	#,
# LinkedList.cpp:710:         if (p && p->exp == E[i])
	movq	-48(%rbp), %rax	# p, tmp120
	movl	8(%rax), %edx	# p_26->exp, _6
# LinkedList.cpp:710:         if (p && p->exp == E[i])
	movl	-52(%rbp), %eax	# i, tmp121
	cltq
# LinkedList.cpp:710:         if (p && p->exp == E[i])
	leaq	0(,%rax,4), %rcx	#, _8
	movq	-88(%rbp), %rax	# E, tmp122
	addq	%rcx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# LinkedList.cpp:710:         if (p && p->exp == E[i])
	cmpl	%eax, %edx	# _10, _6
	jne	.L257	#,
# LinkedList.cpp:711:             p->coef += C[i];
	movq	-48(%rbp), %rax	# p, tmp123
	movsd	(%rax), %xmm1	# p_26->coef, _11
# LinkedList.cpp:711:             p->coef += C[i];
	movl	-52(%rbp), %eax	# i, tmp124
	cltq
# LinkedList.cpp:711:             p->coef += C[i];
	leaq	0(,%rax,8), %rdx	#, _13
	movq	-80(%rbp), %rax	# C, tmp125
	addq	%rdx, %rax	# _13, _14
	movsd	(%rax), %xmm0	# *_14, _15
# LinkedList.cpp:711:             p->coef += C[i];
	addsd	%xmm1, %xmm0	# _11, _16
	movq	-48(%rbp), %rax	# p, tmp126
	movsd	%xmm0, (%rax)	# _16, p_26->coef
	jmp	.L258	#
.L257:
# LinkedList.cpp:714:             Polynomial newTerm = new Term(C[i], E[i], p);
	movl	$24, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp127, _47
# LinkedList.cpp:714:             Polynomial newTerm = new Term(C[i], E[i], p);
	movl	-52(%rbp), %eax	# i, tmp128
	cltq
# LinkedList.cpp:714:             Polynomial newTerm = new Term(C[i], E[i], p);
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-88(%rbp), %rax	# E, tmp129
	addq	%rdx, %rax	# _18, _19
# LinkedList.cpp:714:             Polynomial newTerm = new Term(C[i], E[i], p);
	movl	(%rax), %ecx	# *_19, _20
# LinkedList.cpp:714:             Polynomial newTerm = new Term(C[i], E[i], p);
	movl	-52(%rbp), %eax	# i, tmp130
	cltq
# LinkedList.cpp:714:             Polynomial newTerm = new Term(C[i], E[i], p);
	leaq	0(,%rax,8), %rdx	#, _22
	movq	-80(%rbp), %rax	# C, tmp131
	addq	%rdx, %rax	# _22, _23
# LinkedList.cpp:714:             Polynomial newTerm = new Term(C[i], E[i], p);
	movq	(%rax), %rax	# *_23, _24
	movq	-48(%rbp), %rdx	# p, tmp132
	movl	%ecx, %esi	# _20,
	movq	%rax, %xmm0	# _24,
	movq	%rbx, %rdi	# _47,
	call	_ZN8TermNodeC1EdiPS_	#
	movq	%rbx, -24(%rbp)	# _47, newTerm
# LinkedList.cpp:715:             prev->next = newTerm;
	movq	-40(%rbp), %rax	# prev, tmp133
	movq	-24(%rbp), %rdx	# newTerm, tmp134
	movq	%rdx, 16(%rax)	# tmp134, prev_27->next
.L258:
# LinkedList.cpp:701:     for (int i = 0; i < num; i++)
	addl	$1, -52(%rbp)	#, i
	jmp	.L259	#
.L254:
# LinkedList.cpp:718:     PL = Dummyhead->next;
	movq	-32(%rbp), %rax	# Dummyhead, tmp135
	movq	16(%rax), %rdx	# Dummyhead_36->next, _25
# LinkedList.cpp:718:     PL = Dummyhead->next;
	movq	-72(%rbp), %rax	# PL, tmp136
	movq	%rdx, (%rax)	# _25, *PL_53(D)
# LinkedList.cpp:719: }
	nop	
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3026:
	.size	_Z5InputRP8TermNodePdPii, .-_Z5InputRP8TermNodePdPii
	.section	.rodata
.LC15:
	.string	"x^"
	.text
	.globl	_Z9PrintPolyRP8TermNode
	.type	_Z9PrintPolyRP8TermNode, @function
_Z9PrintPolyRP8TermNode:
.LFB3027:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# PL, PL
# LinkedList.cpp:722:     Polynomial p = PL;
	movq	-24(%rbp), %rax	# PL, tmp91
	movq	(%rax), %rax	# *PL_20(D), tmp92
	movq	%rax, -8(%rbp)	# tmp92, p
# LinkedList.cpp:723:     int flag = 0;
	movl	$0, -12(%rbp)	#, flag
.L272:
# LinkedList.cpp:724:     while (p)
	cmpq	$0, -8(%rbp)	#, p
	je	.L261	#,
# LinkedList.cpp:726:         if (!p->coef)
	movq	-8(%rbp), %rax	# p, tmp93
	movsd	(%rax), %xmm0	# p_10->coef, _1
# LinkedList.cpp:726:         if (!p->coef)
	pxor	%xmm1, %xmm1	# tmp94
	ucomisd	%xmm1, %xmm0	# tmp94, _1
	jp	.L262	#,
	pxor	%xmm1, %xmm1	# tmp95
	ucomisd	%xmm1, %xmm0	# tmp95, _1
	jne	.L262	#,
# LinkedList.cpp:727:             p = p->next;
	movq	-8(%rbp), %rax	# p, tmp96
	movq	16(%rax), %rax	# p_10->next, tmp97
	movq	%rax, -8(%rbp)	# tmp97, p
	jmp	.L272	#
.L262:
# LinkedList.cpp:730:             if (flag && p->coef > 0)
	cmpl	$0, -12(%rbp)	#, flag
	je	.L265	#,
# LinkedList.cpp:730:             if (flag && p->coef > 0)
	movq	-8(%rbp), %rax	# p, tmp98
	movsd	(%rax), %xmm0	# p_10->coef, _2
# LinkedList.cpp:730:             if (flag && p->coef > 0)
	pxor	%xmm1, %xmm1	# tmp99
	comisd	%xmm1, %xmm0	# tmp99, _2
	jbe	.L265	#,
# LinkedList.cpp:731:                 cout << '+';
	movl	$43, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
.L265:
# LinkedList.cpp:732:             flag = 1;
	movl	$1, -12(%rbp)	#, flag
# LinkedList.cpp:733:             if (p->coef != 1)
	movq	-8(%rbp), %rax	# p, tmp100
	movsd	(%rax), %xmm0	# p_10->coef, _3
# LinkedList.cpp:733:             if (p->coef != 1)
	movsd	.LC14(%rip), %xmm1	#, tmp101
	ucomisd	%xmm1, %xmm0	# tmp101, _3
	jp	.L275	#,
	movsd	.LC14(%rip), %xmm1	#, tmp102
	ucomisd	%xmm1, %xmm0	# tmp102, _3
	je	.L276	#,
.L275:
# LinkedList.cpp:734:                 cout << p->coef;
	movq	-8(%rbp), %rax	# p, tmp103
	movq	(%rax), %rax	# p_10->coef, _4
	movq	%rax, %xmm0	# _4,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEd@PLT	#
	jmp	.L269	#
.L276:
# LinkedList.cpp:735:             else if (!p->exp)
	movq	-8(%rbp), %rax	# p, tmp104
	movl	8(%rax), %eax	# p_10->exp, _5
# LinkedList.cpp:735:             else if (!p->exp)
	testl	%eax, %eax	# _5
	jne	.L269	#,
# LinkedList.cpp:736:                 cout << '1';
	movl	$49, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
.L269:
# LinkedList.cpp:737:             if (p->exp == 1)
	movq	-8(%rbp), %rax	# p, tmp105
	movl	8(%rax), %eax	# p_10->exp, _6
# LinkedList.cpp:737:             if (p->exp == 1)
	cmpl	$1, %eax	#, _6
	jne	.L270	#,
# LinkedList.cpp:738:                 cout << 'x';
	movl	$120, %esi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
	jmp	.L271	#
.L270:
# LinkedList.cpp:739:             else if (p->exp)
	movq	-8(%rbp), %rax	# p, tmp106
	movl	8(%rax), %eax	# p_10->exp, _7
# LinkedList.cpp:739:             else if (p->exp)
	testl	%eax, %eax	# _7
	je	.L271	#,
# LinkedList.cpp:740:                 cout << "x^" << p->exp;
	leaq	.LC15(%rip), %rsi	#,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _8
# LinkedList.cpp:740:                 cout << "x^" << p->exp;
	movq	-8(%rbp), %rax	# p, tmp107
	movl	8(%rax), %eax	# p_10->exp, _9
	movl	%eax, %esi	# _9,
	movq	%rdx, %rdi	# _8,
	call	_ZNSolsEi@PLT	#
.L271:
# LinkedList.cpp:741:             p = p->next;
	movq	-8(%rbp), %rax	# p, tmp108
	movq	16(%rax), %rax	# p_10->next, tmp109
	movq	%rax, -8(%rbp)	# tmp109, p
# LinkedList.cpp:724:     while (p)
	jmp	.L272	#
.L261:
# LinkedList.cpp:744:     cout << endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEPFRSoS_E@PLT	#
# LinkedList.cpp:745: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3027:
	.size	_Z9PrintPolyRP8TermNode, .-_Z9PrintPolyRP8TermNode
	.globl	_Z13AddPolynomialRP8TermNodeS1_
	.type	_Z13AddPolynomialRP8TermNodeS1_, @function
_Z13AddPolynomialRP8TermNodeS1_:
.LFB3028:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# A, A
	movq	%rsi, -32(%rbp)	# B, B
# LinkedList.cpp:748:     if (!A || (B && A->exp < B->exp))
	movq	-24(%rbp), %rax	# A, tmp126
	movq	(%rax), %rax	# *A_48(D), _1
# LinkedList.cpp:748:     if (!A || (B && A->exp < B->exp))
	testq	%rax, %rax	# _1
	je	.L278	#,
# LinkedList.cpp:748:     if (!A || (B && A->exp < B->exp))
	movq	-32(%rbp), %rax	# B, tmp127
	movq	(%rax), %rax	# *B_49(D), _2
# LinkedList.cpp:748:     if (!A || (B && A->exp < B->exp))
	testq	%rax, %rax	# _2
	je	.L279	#,
# LinkedList.cpp:748:     if (!A || (B && A->exp < B->exp))
	movq	-24(%rbp), %rax	# A, tmp128
	movq	(%rax), %rax	# *A_48(D), _3
# LinkedList.cpp:748:     if (!A || (B && A->exp < B->exp))
	movl	8(%rax), %edx	# _3->exp, _4
# LinkedList.cpp:748:     if (!A || (B && A->exp < B->exp))
	movq	-32(%rbp), %rax	# B, tmp129
	movq	(%rax), %rax	# *B_49(D), _5
# LinkedList.cpp:748:     if (!A || (B && A->exp < B->exp))
	movl	8(%rax), %eax	# _5->exp, _6
# LinkedList.cpp:748:     if (!A || (B && A->exp < B->exp))
	cmpl	%eax, %edx	# _6, _4
	jge	.L279	#,
.L278:
# LinkedList.cpp:749:         swap(A, B);
	movq	-32(%rbp), %rdx	# B, tmp130
	movq	-24(%rbp), %rax	# A, tmp131
	movq	%rdx, %rsi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	_ZSt4swapIP8TermNodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_	#
	jmp	.L280	#
.L279:
# LinkedList.cpp:750:     else if (B && A->exp == B->exp)
	movq	-32(%rbp), %rax	# B, tmp132
	movq	(%rax), %rax	# *B_49(D), _7
# LinkedList.cpp:750:     else if (B && A->exp == B->exp)
	testq	%rax, %rax	# _7
	je	.L280	#,
# LinkedList.cpp:750:     else if (B && A->exp == B->exp)
	movq	-24(%rbp), %rax	# A, tmp133
	movq	(%rax), %rax	# *A_48(D), _8
# LinkedList.cpp:750:     else if (B && A->exp == B->exp)
	movl	8(%rax), %edx	# _8->exp, _9
# LinkedList.cpp:750:     else if (B && A->exp == B->exp)
	movq	-32(%rbp), %rax	# B, tmp134
	movq	(%rax), %rax	# *B_49(D), _10
# LinkedList.cpp:750:     else if (B && A->exp == B->exp)
	movl	8(%rax), %eax	# _10->exp, _11
# LinkedList.cpp:750:     else if (B && A->exp == B->exp)
	cmpl	%eax, %edx	# _11, _9
	jne	.L280	#,
# LinkedList.cpp:752:         if (A->coef + B->coef)
	movq	-24(%rbp), %rax	# A, tmp135
	movq	(%rax), %rax	# *A_48(D), _12
# LinkedList.cpp:752:         if (A->coef + B->coef)
	movsd	(%rax), %xmm1	# _12->coef, _13
# LinkedList.cpp:752:         if (A->coef + B->coef)
	movq	-32(%rbp), %rax	# B, tmp136
	movq	(%rax), %rax	# *B_49(D), _14
# LinkedList.cpp:752:         if (A->coef + B->coef)
	movsd	(%rax), %xmm0	# _14->coef, _15
# LinkedList.cpp:752:         if (A->coef + B->coef)
	addsd	%xmm1, %xmm0	# _13, _16
# LinkedList.cpp:752:         if (A->coef + B->coef)
	pxor	%xmm1, %xmm1	# tmp137
	ucomisd	%xmm1, %xmm0	# tmp137, _16
	jp	.L285	#,
	pxor	%xmm1, %xmm1	# tmp138
	ucomisd	%xmm1, %xmm0	# tmp138, _16
	je	.L286	#,
.L285:
# LinkedList.cpp:754:             A->coef += B->coef;
	movq	-24(%rbp), %rax	# A, tmp139
	movq	(%rax), %rax	# *A_48(D), _17
# LinkedList.cpp:754:             A->coef += B->coef;
	movsd	(%rax), %xmm1	# _17->coef, _18
# LinkedList.cpp:754:             A->coef += B->coef;
	movq	-32(%rbp), %rax	# B, tmp140
	movq	(%rax), %rax	# *B_49(D), _19
# LinkedList.cpp:754:             A->coef += B->coef;
	movsd	(%rax), %xmm0	# _19->coef, _20
# LinkedList.cpp:754:             A->coef += B->coef;
	movq	-24(%rbp), %rax	# A, tmp141
	movq	(%rax), %rax	# *A_48(D), _21
# LinkedList.cpp:754:             A->coef += B->coef;
	addsd	%xmm1, %xmm0	# _18, _22
	movsd	%xmm0, (%rax)	# _22, _21->coef
# LinkedList.cpp:755:             A->next = AddPolynomial(A->next, B->next);
	movq	-32(%rbp), %rax	# B, tmp142
	movq	(%rax), %rax	# *B_49(D), _23
# LinkedList.cpp:755:             A->next = AddPolynomial(A->next, B->next);
	leaq	16(%rax), %rdx	#, _24
# LinkedList.cpp:755:             A->next = AddPolynomial(A->next, B->next);
	movq	-24(%rbp), %rax	# A, tmp143
	movq	(%rax), %rax	# *A_48(D), _25
# LinkedList.cpp:755:             A->next = AddPolynomial(A->next, B->next);
	addq	$16, %rax	#, _26
# LinkedList.cpp:755:             A->next = AddPolynomial(A->next, B->next);
	movq	-24(%rbp), %rcx	# A, tmp144
	movq	(%rcx), %rbx	# *A_48(D), _27
# LinkedList.cpp:755:             A->next = AddPolynomial(A->next, B->next);
	movq	%rdx, %rsi	# _24,
	movq	%rax, %rdi	# _26,
	call	_Z13AddPolynomialRP8TermNodeS1_	#
# LinkedList.cpp:755:             A->next = AddPolynomial(A->next, B->next);
	movq	%rax, 16(%rbx)	# _28, _27->next
	jmp	.L280	#
.L286:
# LinkedList.cpp:758:             return AddPolynomial(A->next, B->next);
	movq	-32(%rbp), %rax	# B, tmp145
	movq	(%rax), %rax	# *B_49(D), _29
# LinkedList.cpp:758:             return AddPolynomial(A->next, B->next);
	leaq	16(%rax), %rdx	#, _30
# LinkedList.cpp:758:             return AddPolynomial(A->next, B->next);
	movq	-24(%rbp), %rax	# A, tmp146
	movq	(%rax), %rax	# *A_48(D), _31
# LinkedList.cpp:758:             return AddPolynomial(A->next, B->next);
	addq	$16, %rax	#, _32
# LinkedList.cpp:758:             return AddPolynomial(A->next, B->next);
	movq	%rdx, %rsi	# _30,
	movq	%rax, %rdi	# _32,
	call	_Z13AddPolynomialRP8TermNodeS1_	#
# LinkedList.cpp:758:             return AddPolynomial(A->next, B->next);
	jmp	.L283	#
.L280:
# LinkedList.cpp:760:     if (A && B && A->exp > B->exp)
	movq	-24(%rbp), %rax	# A, tmp147
	movq	(%rax), %rax	# *A_48(D), _33
# LinkedList.cpp:760:     if (A && B && A->exp > B->exp)
	testq	%rax, %rax	# _33
	je	.L284	#,
# LinkedList.cpp:760:     if (A && B && A->exp > B->exp)
	movq	-32(%rbp), %rax	# B, tmp148
	movq	(%rax), %rax	# *B_49(D), _34
# LinkedList.cpp:760:     if (A && B && A->exp > B->exp)
	testq	%rax, %rax	# _34
	je	.L284	#,
# LinkedList.cpp:760:     if (A && B && A->exp > B->exp)
	movq	-24(%rbp), %rax	# A, tmp149
	movq	(%rax), %rax	# *A_48(D), _35
# LinkedList.cpp:760:     if (A && B && A->exp > B->exp)
	movl	8(%rax), %edx	# _35->exp, _36
# LinkedList.cpp:760:     if (A && B && A->exp > B->exp)
	movq	-32(%rbp), %rax	# B, tmp150
	movq	(%rax), %rax	# *B_49(D), _37
# LinkedList.cpp:760:     if (A && B && A->exp > B->exp)
	movl	8(%rax), %eax	# _37->exp, _38
# LinkedList.cpp:760:     if (A && B && A->exp > B->exp)
	cmpl	%eax, %edx	# _38, _36
	jle	.L284	#,
# LinkedList.cpp:761:         A->next = AddPolynomial(A->next, B);
	movq	-24(%rbp), %rax	# A, tmp151
	movq	(%rax), %rax	# *A_48(D), _39
# LinkedList.cpp:761:         A->next = AddPolynomial(A->next, B);
	leaq	16(%rax), %rdx	#, _40
# LinkedList.cpp:761:         A->next = AddPolynomial(A->next, B);
	movq	-24(%rbp), %rax	# A, tmp152
	movq	(%rax), %rbx	# *A_48(D), _41
# LinkedList.cpp:761:         A->next = AddPolynomial(A->next, B);
	movq	-32(%rbp), %rax	# B, tmp153
	movq	%rax, %rsi	# tmp153,
	movq	%rdx, %rdi	# _40,
	call	_Z13AddPolynomialRP8TermNodeS1_	#
# LinkedList.cpp:761:         A->next = AddPolynomial(A->next, B);
	movq	%rax, 16(%rbx)	# _42, _41->next
.L284:
# LinkedList.cpp:762:     return A;
	movq	-24(%rbp), %rax	# A, tmp154
	movq	(%rax), %rax	# *A_48(D), _51
.L283:
# LinkedList.cpp:763: }
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3028:
	.size	_Z13AddPolynomialRP8TermNodeS1_, .-_Z13AddPolynomialRP8TermNodeS1_
	.globl	_Z15MultiPolynomialRP8TermNodeS1_
	.type	_Z15MultiPolynomialRP8TermNodeS1_, @function
_Z15MultiPolynomialRP8TermNodeS1_:
.LFB3029:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# A, A
	movq	%rsi, -96(%rbp)	# B, B
# LinkedList.cpp:766:     Polynomial PA = A, PB = B, Head = new Term, prev, p;
	movq	-88(%rbp), %rax	# A, tmp114
	movq	(%rax), %rax	# *A_37(D), tmp115
	movq	%rax, -64(%rbp)	# tmp115, PA
# LinkedList.cpp:766:     Polynomial PA = A, PB = B, Head = new Term, prev, p;
	movq	-96(%rbp), %rax	# B, tmp116
	movq	(%rax), %rax	# *B_39(D), tmp117
	movq	%rax, -56(%rbp)	# tmp117, PB
# LinkedList.cpp:766:     Polynomial PA = A, PB = B, Head = new Term, prev, p;
	movl	$24, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp118, _42
	movq	%rbx, %rdi	# _42,
	call	_ZN8TermNodeC1Ev	#
	movq	%rbx, -32(%rbp)	# _42, Head
.L300:
# LinkedList.cpp:768:     while (PA)
	cmpq	$0, -64(%rbp)	#, PA
	je	.L288	#,
# LinkedList.cpp:770:         PB = B;
	movq	-96(%rbp), %rax	# B, tmp119
	movq	(%rax), %rax	# *B_39(D), tmp120
	movq	%rax, -56(%rbp)	# tmp120, PB
.L299:
# LinkedList.cpp:771:         while (PB)
	cmpq	$0, -56(%rbp)	#, PB
	je	.L289	#,
# LinkedList.cpp:773:             prev = Head;
	movq	-32(%rbp), %rax	# Head, tmp121
	movq	%rax, -48(%rbp)	# tmp121, prev
# LinkedList.cpp:774:             p = Head->next;
	movq	-32(%rbp), %rax	# Head, tmp122
	movq	16(%rax), %rax	# Head_45->next, tmp123
	movq	%rax, -40(%rbp)	# tmp123, p
.L291:
# LinkedList.cpp:775:             while (p && p->exp > PA->exp + PB->exp) //找到插入位置
	cmpq	$0, -40(%rbp)	#, p
	je	.L290	#,
# LinkedList.cpp:775:             while (p && p->exp > PA->exp + PB->exp) //找到插入位置
	movq	-40(%rbp), %rax	# p, tmp124
	movl	8(%rax), %edx	# p_30->exp, _1
# LinkedList.cpp:775:             while (p && p->exp > PA->exp + PB->exp) //找到插入位置
	movq	-64(%rbp), %rax	# PA, tmp125
	movl	8(%rax), %ecx	# PA_27->exp, _2
# LinkedList.cpp:775:             while (p && p->exp > PA->exp + PB->exp) //找到插入位置
	movq	-56(%rbp), %rax	# PB, tmp126
	movl	8(%rax), %eax	# PB_28->exp, _3
# LinkedList.cpp:775:             while (p && p->exp > PA->exp + PB->exp) //找到插入位置
	addl	%ecx, %eax	# _2, _4
# LinkedList.cpp:775:             while (p && p->exp > PA->exp + PB->exp) //找到插入位置
	cmpl	%eax, %edx	# _4, _1
	jle	.L290	#,
# LinkedList.cpp:777:                 prev = p;
	movq	-40(%rbp), %rax	# p, tmp127
	movq	%rax, -48(%rbp)	# tmp127, prev
# LinkedList.cpp:778:                 p = p->next;
	movq	-40(%rbp), %rax	# p, tmp128
	movq	16(%rax), %rax	# p_30->next, tmp129
	movq	%rax, -40(%rbp)	# tmp129, p
# LinkedList.cpp:775:             while (p && p->exp > PA->exp + PB->exp) //找到插入位置
	jmp	.L291	#
.L290:
# LinkedList.cpp:780:             if (temp = PA->coef * PB->coef)
	movq	-64(%rbp), %rax	# PA, tmp130
	movsd	(%rax), %xmm1	# PA_27->coef, _5
# LinkedList.cpp:780:             if (temp = PA->coef * PB->coef)
	movq	-56(%rbp), %rax	# PB, tmp131
	movsd	(%rax), %xmm0	# PB_28->coef, _6
# LinkedList.cpp:780:             if (temp = PA->coef * PB->coef)
	mulsd	%xmm1, %xmm0	# _5, _7
# LinkedList.cpp:780:             if (temp = PA->coef * PB->coef)
	cvttsd2sil	%xmm0, %eax	# _7, tmp132
	movl	%eax, -68(%rbp)	# tmp132, temp
# LinkedList.cpp:780:             if (temp = PA->coef * PB->coef)
	cmpl	$0, -68(%rbp)	#, temp
	setne	%al	#, retval.31_52
# LinkedList.cpp:780:             if (temp = PA->coef * PB->coef)
	testb	%al, %al	# retval.31_52
	je	.L292	#,
# LinkedList.cpp:782:                 if (p && PA->exp + PB->exp == p->exp) //合并项
	cmpq	$0, -40(%rbp)	#, p
	je	.L293	#,
# LinkedList.cpp:782:                 if (p && PA->exp + PB->exp == p->exp) //合并项
	movq	-64(%rbp), %rax	# PA, tmp133
	movl	8(%rax), %edx	# PA_27->exp, _8
# LinkedList.cpp:782:                 if (p && PA->exp + PB->exp == p->exp) //合并项
	movq	-56(%rbp), %rax	# PB, tmp134
	movl	8(%rax), %eax	# PB_28->exp, _9
# LinkedList.cpp:782:                 if (p && PA->exp + PB->exp == p->exp) //合并项
	addl	%eax, %edx	# _9, _10
# LinkedList.cpp:782:                 if (p && PA->exp + PB->exp == p->exp) //合并项
	movq	-40(%rbp), %rax	# p, tmp135
	movl	8(%rax), %eax	# p_30->exp, _11
# LinkedList.cpp:782:                 if (p && PA->exp + PB->exp == p->exp) //合并项
	cmpl	%eax, %edx	# _11, _10
	jne	.L293	#,
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	movq	-64(%rbp), %rax	# PA, tmp136
	movsd	(%rax), %xmm1	# PA_27->coef, _12
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	movq	-56(%rbp), %rax	# PB, tmp137
	movsd	(%rax), %xmm0	# PB_28->coef, _13
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	mulsd	%xmm0, %xmm1	# _13, _14
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	movq	-40(%rbp), %rax	# p, tmp138
	movsd	(%rax), %xmm0	# p_30->coef, _15
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	addsd	%xmm1, %xmm0	# _14, _16
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	cvttsd2sil	%xmm0, %eax	# _16, tmp139
	movl	%eax, -68(%rbp)	# tmp139, temp
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	cmpl	$0, -68(%rbp)	#, temp
	setne	%al	#, retval.32_54
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	testb	%al, %al	# retval.32_54
	je	.L294	#,
# LinkedList.cpp:785:                         p->coef = temp;
	cvtsi2sdl	-68(%rbp), %xmm0	# temp, _17
	movq	-40(%rbp), %rax	# p, tmp140
	movsd	%xmm0, (%rax)	# _17, p_30->coef
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	jmp	.L292	#
.L294:
# LinkedList.cpp:787:                         prev->next = p->next; //消掉
	movq	-40(%rbp), %rax	# p, tmp141
	movq	16(%rax), %rdx	# p_30->next, _18
# LinkedList.cpp:787:                         prev->next = p->next; //消掉
	movq	-48(%rbp), %rax	# prev, tmp142
	movq	%rdx, 16(%rax)	# _18, prev_29->next
# LinkedList.cpp:784:                     if (temp = PA->coef * PB->coef + p->coef)
	jmp	.L292	#
.L293:
# LinkedList.cpp:789:                 else if ((p && PA->exp + PB->exp != p->exp) || !p) //新建项
	cmpq	$0, -40(%rbp)	#, p
	je	.L297	#,
# LinkedList.cpp:789:                 else if ((p && PA->exp + PB->exp != p->exp) || !p) //新建项
	movq	-64(%rbp), %rax	# PA, tmp143
	movl	8(%rax), %edx	# PA_27->exp, _19
# LinkedList.cpp:789:                 else if ((p && PA->exp + PB->exp != p->exp) || !p) //新建项
	movq	-56(%rbp), %rax	# PB, tmp144
	movl	8(%rax), %eax	# PB_28->exp, _20
# LinkedList.cpp:789:                 else if ((p && PA->exp + PB->exp != p->exp) || !p) //新建项
	addl	%eax, %edx	# _20, _21
# LinkedList.cpp:789:                 else if ((p && PA->exp + PB->exp != p->exp) || !p) //新建项
	movq	-40(%rbp), %rax	# p, tmp145
	movl	8(%rax), %eax	# p_30->exp, _22
# LinkedList.cpp:789:                 else if ((p && PA->exp + PB->exp != p->exp) || !p) //新建项
	cmpl	%eax, %edx	# _22, _21
	jne	.L298	#,
.L297:
# LinkedList.cpp:789:                 else if ((p && PA->exp + PB->exp != p->exp) || !p) //新建项
	cmpq	$0, -40(%rbp)	#, p
	jne	.L292	#,
.L298:
# LinkedList.cpp:791:                     Polynomial newTerm = new Term(temp, PA->exp + PB->exp);
	movl	$24, %edi	#,
	call	_Znwm@PLT	#
	movq	%rax, %rbx	# tmp146, _58
# LinkedList.cpp:791:                     Polynomial newTerm = new Term(temp, PA->exp + PB->exp);
	movq	-64(%rbp), %rax	# PA, tmp147
	movl	8(%rax), %edx	# PA_27->exp, _23
# LinkedList.cpp:791:                     Polynomial newTerm = new Term(temp, PA->exp + PB->exp);
	movq	-56(%rbp), %rax	# PB, tmp148
	movl	8(%rax), %eax	# PB_28->exp, _24
# LinkedList.cpp:791:                     Polynomial newTerm = new Term(temp, PA->exp + PB->exp);
	addl	%edx, %eax	# _23, _25
	cvtsi2sdl	-68(%rbp), %xmm0	# temp, _26
	movl	%eax, %esi	# _25,
	movq	%rbx, %rdi	# _58,
	call	_ZN8TermNodeC1Edi	#
	movq	%rbx, -24(%rbp)	# _58, newTerm
# LinkedList.cpp:792:                     newTerm->next = p;
	movq	-24(%rbp), %rax	# newTerm, tmp149
	movq	-40(%rbp), %rdx	# p, tmp150
	movq	%rdx, 16(%rax)	# tmp150, newTerm_61->next
# LinkedList.cpp:793:                     prev->next = newTerm;
	movq	-48(%rbp), %rax	# prev, tmp151
	movq	-24(%rbp), %rdx	# newTerm, tmp152
	movq	%rdx, 16(%rax)	# tmp152, prev_29->next
.L292:
# LinkedList.cpp:796:             PB = PB->next;
	movq	-56(%rbp), %rax	# PB, tmp153
	movq	16(%rax), %rax	# PB_28->next, tmp154
	movq	%rax, -56(%rbp)	# tmp154, PB
# LinkedList.cpp:771:         while (PB)
	jmp	.L299	#
.L289:
# LinkedList.cpp:798:         PA = PA->next;
	movq	-64(%rbp), %rax	# PA, tmp155
	movq	16(%rax), %rax	# PA_27->next, tmp156
	movq	%rax, -64(%rbp)	# tmp156, PA
# LinkedList.cpp:768:     while (PA)
	jmp	.L300	#
.L288:
# LinkedList.cpp:800:     return Head->next;
	movq	-32(%rbp), %rax	# Head, tmp157
	movq	16(%rax), %rax	# Head_45->next, _66
# LinkedList.cpp:801: }
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3029:
	.size	_Z15MultiPolynomialRP8TermNodeS1_, .-_Z15MultiPolynomialRP8TermNodeS1_
	.globl	_Z14EvalPolynomialRP8TermNodei
	.type	_Z14EvalPolynomialRP8TermNodei, @function
_Z14EvalPolynomialRP8TermNodei:
.LFB3030:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# PL, PL
	movl	%esi, -28(%rbp)	# x, x
# LinkedList.cpp:804:     double result = 0;
	pxor	%xmm0, %xmm0	# tmp88
	movsd	%xmm0, -16(%rbp)	# tmp88, result
# LinkedList.cpp:805:     Polynomial p = PL;
	movq	-24(%rbp), %rax	# PL, tmp89
	movq	(%rax), %rax	# *PL_9(D), tmp90
	movq	%rax, -8(%rbp)	# tmp90, p
.L304:
# LinkedList.cpp:806:     while (p)
	cmpq	$0, -8(%rbp)	#, p
	je	.L303	#,
# LinkedList.cpp:808:         result += p->coef * pow(x, p->exp);
	movq	-8(%rbp), %rax	# p, tmp91
	movsd	(%rax), %xmm2	# p_5->coef, _1
	movsd	%xmm2, -40(%rbp)	# _1, %sfp
# LinkedList.cpp:808:         result += p->coef * pow(x, p->exp);
	movq	-8(%rbp), %rax	# p, tmp92
	movl	8(%rax), %edx	# p_5->exp, _2
	movl	-28(%rbp), %eax	# x, tmp93
	movl	%edx, %esi	# _2,
	movl	%eax, %edi	# tmp93,
	call	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_	#
# LinkedList.cpp:808:         result += p->coef * pow(x, p->exp);
	mulsd	-40(%rbp), %xmm0	# %sfp, _13
# LinkedList.cpp:808:         result += p->coef * pow(x, p->exp);
	movsd	-16(%rbp), %xmm1	# result, tmp95
	addsd	%xmm1, %xmm0	# tmp95, tmp94
	movsd	%xmm0, -16(%rbp)	# tmp94, result
# LinkedList.cpp:809:         p = p->next;
	movq	-8(%rbp), %rax	# p, tmp96
	movq	16(%rax), %rax	# p_5->next, tmp97
	movq	%rax, -8(%rbp)	# tmp97, p
# LinkedList.cpp:806:     while (p)
	jmp	.L304	#
.L303:
# LinkedList.cpp:811:     return result;
	movsd	-16(%rbp), %xmm0	# result, _16
# LinkedList.cpp:812: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3030:
	.size	_Z14EvalPolynomialRP8TermNodei, .-_Z14EvalPolynomialRP8TermNodei
	.globl	_Z16DerivePolynomialRP8TermNode
	.type	_Z16DerivePolynomialRP8TermNode, @function
_Z16DerivePolynomialRP8TermNode:
.LFB3031:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# PL, PL
# LinkedList.cpp:815:     Polynomial p, *pp = &PL;
	movq	-24(%rbp), %rax	# PL, tmp92
	movq	%rax, -16(%rbp)	# tmp92, pp
.L310:
# LinkedList.cpp:816:     while (p = *pp)
	movq	-16(%rbp), %rax	# pp, tmp93
	movq	(%rax), %rax	# *pp_9, tmp94
	movq	%rax, -8(%rbp)	# tmp94, p
# LinkedList.cpp:816:     while (p = *pp)
	cmpq	$0, -8(%rbp)	#, p
	setne	%al	#, retval.33_17
	testb	%al, %al	# retval.33_17
	je	.L311	#,
# LinkedList.cpp:818:         if (!p->exp)
	movq	-8(%rbp), %rax	# p, tmp95
	movl	8(%rax), %eax	# p_16->exp, _1
# LinkedList.cpp:818:         if (!p->exp)
	testl	%eax, %eax	# _1
	jne	.L308	#,
# LinkedList.cpp:820:             *pp = p->next;
	movq	-8(%rbp), %rax	# p, tmp96
	movq	16(%rax), %rdx	# p_16->next, _2
# LinkedList.cpp:820:             *pp = p->next;
	movq	-16(%rbp), %rax	# pp, tmp97
	movq	%rdx, (%rax)	# _2, *pp_9
# LinkedList.cpp:821:             delete p;
	movq	-8(%rbp), %rax	# p, p.34_22
# LinkedList.cpp:821:             delete p;
	testq	%rax, %rax	# p.34_22
	je	.L310	#,
# LinkedList.cpp:821:             delete p;
	movl	$24, %esi	#,
	movq	%rax, %rdi	# p.34_22,
	call	_ZdlPvm@PLT	#
	jmp	.L310	#
.L308:
# LinkedList.cpp:825:             p->coef *= p->exp;
	movq	-8(%rbp), %rax	# p, tmp98
	movsd	(%rax), %xmm1	# p_16->coef, _3
# LinkedList.cpp:825:             p->coef *= p->exp;
	movq	-8(%rbp), %rax	# p, tmp99
	movl	8(%rax), %eax	# p_16->exp, _4
# LinkedList.cpp:825:             p->coef *= p->exp;
	cvtsi2sdl	%eax, %xmm0	# _4, _5
	mulsd	%xmm1, %xmm0	# _3, _6
	movq	-8(%rbp), %rax	# p, tmp100
	movsd	%xmm0, (%rax)	# _6, p_16->coef
# LinkedList.cpp:826:             p->exp--;
	movq	-8(%rbp), %rax	# p, tmp101
	movl	8(%rax), %eax	# p_16->exp, _7
# LinkedList.cpp:826:             p->exp--;
	leal	-1(%rax), %edx	#, _8
	movq	-8(%rbp), %rax	# p, tmp102
	movl	%edx, 8(%rax)	# _8, p_16->exp
# LinkedList.cpp:827:             pp = &p->next;
	movq	-8(%rbp), %rax	# p, tmp106
	addq	$16, %rax	#, tmp105
	movq	%rax, -16(%rbp)	# tmp105, pp
# LinkedList.cpp:816:     while (p = *pp)
	jmp	.L310	#
.L311:
# LinkedList.cpp:830: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3031:
	.size	_Z16DerivePolynomialRP8TermNode, .-_Z16DerivePolynomialRP8TermNode
	.globl	main
	.type	main, @function
main:
.LFB3032:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
# LinkedListmain.cpp:9: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp96
	movq	%rax, -8(%rbp)	# tmp96, D.65401
	xorl	%eax, %eax	# tmp96
# LinkedListmain.cpp:15:   double C[MAX] = {0, 1, 2, 3, 4};
	pxor	%xmm0, %xmm0	# tmp84
	movsd	%xmm0, -48(%rbp)	# tmp84, C
	movsd	.LC14(%rip), %xmm0	#, tmp85
	movsd	%xmm0, -40(%rbp)	# tmp85, C
	movsd	.LC16(%rip), %xmm0	#, tmp86
	movsd	%xmm0, -32(%rbp)	# tmp86, C
	movsd	.LC17(%rip), %xmm0	#, tmp87
	movsd	%xmm0, -24(%rbp)	# tmp87, C
	movsd	.LC18(%rip), %xmm0	#, tmp88
	movsd	%xmm0, -16(%rbp)	# tmp88, C
# LinkedListmain.cpp:16:   int E[MAX] = {0, 1, 2, 3, 0};
	movl	$0, -80(%rbp)	#, E
	movl	$1, -76(%rbp)	#, E
	movl	$2, -72(%rbp)	#, E
	movl	$3, -68(%rbp)	#, E
	movl	$0, -64(%rbp)	#, E
# LinkedListmain.cpp:17:   Input(L, C, E, MAX);
	leaq	-80(%rbp), %rdx	#, tmp89
	leaq	-48(%rbp), %rsi	#, tmp90
	leaq	-88(%rbp), %rax	#, tmp91
	movl	$5, %ecx	#,
	movq	%rax, %rdi	# tmp91,
	call	_Z5InputRP8TermNodePdPii	#
# LinkedListmain.cpp:18:   PrintPoly(L);
	leaq	-88(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_Z9PrintPolyRP8TermNode	#
# LinkedListmain.cpp:19:   DerivePolynomial(L);
	leaq	-88(%rbp), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	_Z16DerivePolynomialRP8TermNode	#
# LinkedListmain.cpp:20:   PrintPoly(L);
	leaq	-88(%rbp), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	_Z9PrintPolyRP8TermNode	#
# LinkedListmain.cpp:29:   return 0;
	movl	$0, %eax	#, _17
# LinkedListmain.cpp:30: }
	movq	-8(%rbp), %rcx	# D.65401, tmp97
	xorq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	je	.L314	#,
	call	__stack_chk_fail@PLT	#
.L314:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3032:
	.size	main, .-main
	.section	.text._ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_:
.LFB3288:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __t, __t
# /usr/include/c++/9/bits/move.h:100:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-8(%rbp), %rax	# __t, _2
# /usr/include/c++/9/bits/move.h:100:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3288:
	.size	_ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZSt4swapIP4NodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,"axG",@progbits,_ZSt4swapIP4NodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,comdat
	.weak	_ZSt4swapIP4NodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.type	_ZSt4swapIP4NodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, @function
_ZSt4swapIP4NodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_:
.LFB3287:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __a, __a
	movq	%rsi, -32(%rbp)	# __b, __b
# /usr/include/c++/9/bits/move.h:182:     swap(_Tp& __a, _Tp& __b)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	movq	%rax, -8(%rbp)	# tmp93, D.65402
	xorl	%eax, %eax	# tmp93
# /usr/include/c++/9/bits/move.h:193:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	movq	-24(%rbp), %rax	# __a, tmp88
	movq	%rax, %rdi	# tmp88,
	call	_ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_	#
# /usr/include/c++/9/bits/move.h:193:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	movq	(%rax), %rax	# *_1, _2
	movq	%rax, -16(%rbp)	# _2, __tmp
# /usr/include/c++/9/bits/move.h:194:       __a = _GLIBCXX_MOVE(__b);
	movq	-32(%rbp), %rax	# __b, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_	#
# /usr/include/c++/9/bits/move.h:194:       __a = _GLIBCXX_MOVE(__b);
	movq	(%rax), %rdx	# *_3, _4
	movq	-24(%rbp), %rax	# __a, tmp90
	movq	%rdx, (%rax)	# _4, *__a_8(D)
# /usr/include/c++/9/bits/move.h:195:       __b = _GLIBCXX_MOVE(__tmp);
	leaq	-16(%rbp), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	_ZSt4moveIRP4NodeEONSt16remove_referenceIT_E4typeEOS4_	#
# /usr/include/c++/9/bits/move.h:195:       __b = _GLIBCXX_MOVE(__tmp);
	movq	(%rax), %rdx	# *_5, _6
	movq	-32(%rbp), %rax	# __b, tmp92
	movq	%rdx, (%rax)	# _6, *__b_11(D)
# /usr/include/c++/9/bits/move.h:196:     }
	nop	
	movq	-8(%rbp), %rax	# D.65402, tmp94
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp94
	je	.L318	#,
	call	__stack_chk_fail@PLT	#
.L318:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3287:
	.size	_ZSt4swapIP4NodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, .-_ZSt4swapIP4NodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.section	.text._ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_:
.LFB3291:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __t, __t
# /usr/include/c++/9/bits/move.h:100:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-8(%rbp), %rax	# __t, _2
# /usr/include/c++/9/bits/move.h:100:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3291:
	.size	_ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZSt4swapIP8TermNodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,"axG",@progbits,_ZSt4swapIP8TermNodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,comdat
	.weak	_ZSt4swapIP8TermNodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.type	_ZSt4swapIP8TermNodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, @function
_ZSt4swapIP8TermNodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_:
.LFB3290:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __a, __a
	movq	%rsi, -32(%rbp)	# __b, __b
# /usr/include/c++/9/bits/move.h:182:     swap(_Tp& __a, _Tp& __b)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	movq	%rax, -8(%rbp)	# tmp93, D.65403
	xorl	%eax, %eax	# tmp93
# /usr/include/c++/9/bits/move.h:193:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	movq	-24(%rbp), %rax	# __a, tmp88
	movq	%rax, %rdi	# tmp88,
	call	_ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_	#
# /usr/include/c++/9/bits/move.h:193:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	movq	(%rax), %rax	# *_1, _2
	movq	%rax, -16(%rbp)	# _2, __tmp
# /usr/include/c++/9/bits/move.h:194:       __a = _GLIBCXX_MOVE(__b);
	movq	-32(%rbp), %rax	# __b, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_	#
# /usr/include/c++/9/bits/move.h:194:       __a = _GLIBCXX_MOVE(__b);
	movq	(%rax), %rdx	# *_3, _4
	movq	-24(%rbp), %rax	# __a, tmp90
	movq	%rdx, (%rax)	# _4, *__a_8(D)
# /usr/include/c++/9/bits/move.h:195:       __b = _GLIBCXX_MOVE(__tmp);
	leaq	-16(%rbp), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	_ZSt4moveIRP8TermNodeEONSt16remove_referenceIT_E4typeEOS4_	#
# /usr/include/c++/9/bits/move.h:195:       __b = _GLIBCXX_MOVE(__tmp);
	movq	(%rax), %rdx	# *_5, _6
	movq	-32(%rbp), %rax	# __b, tmp92
	movq	%rdx, (%rax)	# _6, *__b_11(D)
# /usr/include/c++/9/bits/move.h:196:     }
	nop	
	movq	-8(%rbp), %rax	# D.65403, tmp94
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp94
	je	.L322	#,
	call	__stack_chk_fail@PLT	#
.L322:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3290:
	.size	_ZSt4swapIP8TermNodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, .-_ZSt4swapIP8TermNodeENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.section	.text._ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,"axG",@progbits,_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,comdat
	.weak	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.type	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, @function
_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_:
.LFB3292:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __x, __x
	movl	%esi, -8(%rbp)	# __y, __y
# /usr/include/c++/9/cmath:418:       return pow(__type(__x), __type(__y));
	cvtsi2sdl	-8(%rbp), %xmm1	# __y, _1
	cvtsi2sdl	-4(%rbp), %xmm0	# __x, _2
	call	pow@PLT	#
# /usr/include/c++/9/cmath:419:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3292:
	.size	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, .-_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3542:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# LinkedListmain.cpp:30: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L327	#,
# LinkedListmain.cpp:30: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L327	#,
# /usr/include/c++/9/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rdi	#,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	leaq	__dso_handle(%rip), %rdx	#,
	leaq	_ZStL8__ioinit(%rip), %rsi	#,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	__cxa_atexit@PLT	#
.L327:
# LinkedListmain.cpp:30: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3542:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z9SListFreeR5SList, @function
_GLOBAL__sub_I__Z9SListFreeR5SList:
.LFB3543:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# LinkedListmain.cpp:30: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3543:
	.size	_GLOBAL__sub_I__Z9SListFreeR5SList, .-_GLOBAL__sub_I__Z9SListFreeR5SList
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z9SListFreeR5SList
	.section	.rodata
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.align 8
.LC16:
	.long	0
	.long	1073741824
	.align 8
.LC17:
	.long	0
	.long	1074266112
	.align 8
.LC18:
	.long	0
	.long	1074790400
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
