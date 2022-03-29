	.file	"main1.cpp"
	.text
.Ltext0:
	.globl	flag
	.bss
	.align 32
	.type	flag, @object
	.size	flag, 40960
flag:
	.zero	40992
	.globl	flag2
	.align 32
	.type	flag2, @object
	.size	flag2, 40960
flag2:
	.zero	40992
	.section	.text._ZN5vnodeC2Ev,"axG",@progbits,_ZN5vnodeC5Ev,comdat
	.align 2
	.weak	_ZN5vnodeC2Ev
	.type	_ZN5vnodeC2Ev, @function
_ZN5vnodeC2Ev:
.LASANPC15:
.LFB15:
	.file 1 "../main1.cpp"
	.loc 1 16 8
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB2:
	.loc 1 16 8
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L2
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L2:
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBE2:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN5vnodeC2Ev, .-_ZN5vnodeC2Ev
	.weak	_ZN5vnodeC1Ev
	.set	_ZN5vnodeC1Ev,_ZN5vnodeC2Ev
	.globl	__asan_stack_malloc_2
	.section	.rodata
	.align 8
.LC0:
	.string	"8 48 4 6 num:29 64 4 7 numb:38 80 4 4 b:44 96 4 4 c:44 112 4 4 d:44 128 4 1 m 144 4 1 n 160 15 4 a:25"
	.globl	__asan_allocas_unpoison
	.align 32
.LC1:
	.string	"%s"
	.zero	61
	.align 32
.LC2:
	.string	"%d"
	.zero	61
	.align 32
.LC3:
	.string	"VERTEX"
	.zero	57
	.align 32
.LC4:
	.string	"EDGE"
	.zero	59
	.align 32
.LC5:
	.string	"%d%d%d"
	.zero	57
	.align 32
.LC6:
	.string	"DFS"
	.zero	60
	.align 32
.LC7:
	.string	"DUMP"
	.zero	59
	.align 32
.LC8:
	.string	"SPANNING-TREE"
	.zero	50
	.text
	.globl	main
	.type	main, @function
main:
.LASANPC13:
.LFB13:
	.loc 1 24 12
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA13
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	leaq	-272(%rbp), %r12
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L3
	movl	$192, %edi
	call	__asan_stack_malloc_2@PLT
.LVL0:
	testq	%rax, %rax
	je	.L3
	movq	%rax, %r12
.L3:
	leaq	224(%r12), %rax
	movq	%rax, %rbx
	movq	$1102416563, (%r12)
	leaq	.LC0(%rip), %rax
	movq	%rax, 8(%r12)
	leaq	.LASANPC13(%rip), %rax
	movq	%rax, 16(%r12)
	movq	%r12, %rax
	shrq	$3, %rax
	movl	$-235802127, 2147450880(%rax)
	movl	$-234556943, 2147450884(%rax)
	movl	$-234556924, 2147450888(%rax)
	movl	$-234556924, 2147450892(%rax)
	movl	$-234556924, 2147450896(%rax)
	movl	$-202176768, 2147450900(%rax)
	.loc 1 24 12
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$0, %r13d
	.loc 1 110 10
	movq	%rsp, %rax
	movq	%rax, -344(%rbp)
	.loc 1 25 7
	leaq	-64(%rbx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	testb	%dl, %dl
	setle	%dl
	movl	%ecx, %edi
	andl	%edx, %edi
	movl	$15, %edx
	subq	$1, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	andl	$7, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	orl	%edi, %edx
	testb	%dl, %dl
	je	.L7
	movl	$15, %esi
	movq	%rax, %rdi
	call	__asan_report_store_n@PLT
.L7:
	movq	$0, -64(%rbx)
	movl	$0, -56(%rbx)
	movw	$0, -52(%rbx)
	movb	$0, -50(%rbx)
	.loc 1 27 7
	leaq	-64(%rbx), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
.LEHB0:
	call	__isoc99_scanf@PLT
	.loc 1 30 7
	leaq	-176(%rbx), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 31 29
	leaq	-176(%rbx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L8
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L8:
	movl	-176(%rbx), %eax
	cltq
	leaq	-1(%rax), %r12
	.loc 1 31 15
	movq	%r12, -312(%rbp)
	movq	%r12, %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	-336(%rbp), %rsi
	movq	-328(%rbp), %rdi
	imulq	$192, %rdi, %rdx
	imulq	$0, %rsi, %rax
	leaq	(%rdx,%rax), %rcx
	movl	$192, %eax
	mulq	%rsi
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%r12, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%r12, %rax
	addq	$1, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	imulq	$192, %r15, %rdx
	imulq	$0, %r14, %rax
	leaq	(%rdx,%rax), %rcx
	movl	$192, %eax
	mulq	%r14
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%r12, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	andl	$31, %eax
	movl	$32, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$64, %rax
	addq	%rcx, %rax
	leaq	24(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rdx
.L9:
	cmpq	%rdx, %rsp
	je	.L10
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L9
.L10:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L11
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L11:
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, %r13
	leaq	32(%r13), %r14
	movq	%rcx, %rsi
	movq	%r14, %rdi
	call	__asan_alloca_poison@PLT
	movq	%r14, -304(%rbp)
	.loc 1 31 29
	movq	-304(%rbp), %rax
	movq	%rax, %r14
.L13:
	.loc 1 31 29 is_stmt 0 discriminator 4
	testq	%r12, %r12
	js	.L62
	.loc 1 31 29 discriminator 3
	movq	%r14, %rdi
	call	_ZN5vnodeC1Ev
	addq	$24, %r14
	subq	$1, %r12
	jmp	.L13
.L62:
.LBB3:
	.loc 1 35 8 is_stmt 1
	leaq	-64(%rbx), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.LEHE0:
.LBB4:
	.loc 1 37 13
	leaq	-64(%rbx), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 37 3
	testl	%eax, %eax
	jne	.L14
.LBB5:
	.loc 1 38 8
	leaq	-160(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$4, (%rax)
	.loc 1 39 9
	leaq	-160(%rbx), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
.LEHB1:
	call	__isoc99_scanf@PLT
	.loc 1 40 32
	leaq	-160(%rbx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L15
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L15:
	movl	-160(%rbx), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-304(%rbp), %rdx
	addq	%rdx, %rax
	.loc 1 40 9
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.LEHE1:
	leaq	-160(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$-8, (%rax)
.L14:
.LBE5:
.LBE4:
.LBB7:
	.loc 1 42 13
	leaq	-64(%rbx), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 42 3
	testl	%eax, %eax
	jne	.L16
.LBB8:
	.loc 1 44 8
	leaq	-144(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$4, (%rax)
	.loc 1 44 10
	leaq	-128(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$4, (%rax)
	.loc 1 44 12
	leaq	-112(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$4, (%rax)
	.loc 1 46 29
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -296(%rbp)
	.loc 1 47 29
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -288(%rbp)
	.loc 1 48 9
	leaq	-112(%rbx), %rcx
	leaq	-128(%rbx), %rdx
	leaq	-144(%rbx), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
.LEHB2:
	call	__isoc99_scanf@PLT
.LEHE2:
	.loc 1 49 14
	leaq	-128(%rbx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L17
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L17:
	movl	-128(%rbx), %ecx
	movq	-296(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	cmpb	$3, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L18
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L18:
	movq	-296(%rbp), %rax
	movl	%ecx, (%rax)
	.loc 1 50 14
	leaq	-112(%rbx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L19
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L19:
	movl	-112(%rbx), %ecx
	movq	-296(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	addl	$3, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L20
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L20:
	movq	-296(%rbp), %rax
	movl	%ecx, 4(%rax)
	.loc 1 51 12
	movq	-296(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L21
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L21:
	movq	-296(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 53 14
	leaq	-144(%rbx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L22
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L22:
	movl	-144(%rbx), %ecx
	movq	-288(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	cmpb	$3, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L23
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L23:
	movq	-288(%rbp), %rax
	movl	%ecx, (%rax)
	.loc 1 54 14
	movl	-112(%rbx), %ecx
	movq	-288(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	addl	$3, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L24
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L24:
	movq	-288(%rbp), %rax
	movl	%ecx, 4(%rax)
	.loc 1 55 12
	movq	-288(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L25
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L25:
	movq	-288(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 56 21
	movl	-144(%rbx), %edx
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rcx
	movq	-304(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L26
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L26:
	movq	-304(%rbp), %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rax
	.loc 1 56 4
	testq	%rax, %rax
	jne	.L27
	.loc 1 57 19
	movl	-144(%rbx), %edx
	.loc 1 57 29
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rcx
	movq	-304(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L28
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L28:
	movq	-304(%rbp), %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	16(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 1 59 22
	movq	-296(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 59 30
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rcx
	movq	-304(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L29
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L29:
	movq	-304(%rbp), %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rax
	.loc 1 59 5
	testq	%rax, %rax
	jne	.L30
	.loc 1 60 20
	movq	-296(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 60 38
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rcx
	movq	-304(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L31
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L31:
	movq	-304(%rbp), %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	16(%rax), %rdx
	movq	-288(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L32
.L30:
	.loc 1 62 24
	movq	-296(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L33
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L33:
	movq	-296(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 62 8
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rcx
	movq	-304(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L34
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L34:
	movq	-304(%rbp), %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
.L37:
	.loc 1 63 15
	movq	-320(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L35
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L35:
	movq	-320(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 63 20
	testq	%rax, %rax
	je	.L36
	.loc 1 64 9
	movq	-320(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)
	.loc 1 63 6
	jmp	.L37
.L36:
	.loc 1 66 14
	movq	-320(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L38
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L38:
	movq	-320(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L32
.L27:
	.loc 1 69 23
	leaq	-144(%rbx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L39
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L39:
	movl	-144(%rbx), %edx
	.loc 1 69 7
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rcx
	movq	-304(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L40
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L40:
	movq	-304(%rbp), %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
.L43:
	.loc 1 70 14
	movq	-320(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L41
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L41:
	movq	-320(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 70 19
	testq	%rax, %rax
	je	.L42
	.loc 1 71 8
	movq	-320(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)
	.loc 1 70 5
	jmp	.L43
.L42:
	.loc 1 73 13
	movq	-320(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L44
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L44:
	movq	-320(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 75 22
	movq	-296(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L45
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L45:
	movq	-296(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 75 30
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rcx
	movq	-304(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L46
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L46:
	movq	-304(%rbp), %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rax
	.loc 1 75 5
	testq	%rax, %rax
	jne	.L47
	.loc 1 76 20
	movq	-296(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 76 38
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rcx
	movq	-304(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L48
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L48:
	movq	-304(%rbp), %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	16(%rax), %rdx
	movq	-288(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L32
.L47:
	.loc 1 78 24
	movq	-296(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L49
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L49:
	movq	-296(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 78 8
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rcx
	movq	-304(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L50
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L50:
	movq	-304(%rbp), %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
.L53:
	.loc 1 79 15
	movq	-320(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L51
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L51:
	movq	-320(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 79 20
	testq	%rax, %rax
	je	.L52
	.loc 1 80 9
	movq	-320(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)
	.loc 1 79 6
	jmp	.L53
.L52:
	.loc 1 82 14
	movq	-320(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L54
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L54:
	movq	-320(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L32:
	leaq	-144(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$-8, (%rax)
	leaq	-128(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$-8, (%rax)
	leaq	-112(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$-8, (%rax)
.L16:
.LBE8:
.LBE7:
.LBB10:
	.loc 1 86 13
	leaq	-64(%rbx), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 86 3
	testl	%eax, %eax
	jne	.L55
.LBB11:
	.loc 1 87 8
	leaq	-96(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$4, (%rax)
	.loc 1 88 9
	leaq	-96(%rbx), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
.LEHB3:
	call	__isoc99_scanf@PLT
	.loc 1 89 7
	leaq	-96(%rbx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L56
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L56:
	movl	-96(%rbx), %edx
	movq	-304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z3DFSP5vnodei
	.loc 1 90 10
	movl	$10, %edi
	call	putchar@PLT
.LEHE3:
	leaq	-96(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$-8, (%rax)
.L55:
.LBE11:
.LBE10:
	.loc 1 93 13
	leaq	-64(%rbx), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 93 3
	testl	%eax, %eax
	jne	.L57
	.loc 1 94 7
	movq	-304(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB4:
	call	_Z3DFSP5vnodei
	.loc 1 95 10
	movl	$10, %edi
	call	putchar@PLT
.LEHE4:
.L57:
.LBB13:
	.loc 1 97 13
	leaq	-64(%rbx), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 97 3
	testl	%eax, %eax
	jne	.L62
.LBB14:
	.loc 1 98 8
	leaq	-80(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$4, (%rax)
	.loc 1 99 9
	leaq	-80(%rbx), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
.LEHB5:
	call	__isoc99_scanf@PLT
	.loc 1 100 15
	leaq	-176(%rbx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L59
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L59:
	movl	-176(%rbx), %edx
	leaq	-80(%rbx), %rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	cmpb	$3, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L60
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L60:
	movl	-80(%rbx), %ecx
	movq	-304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z4primP5vnodeii
	movq	%rax, -280(%rbp)
	.loc 1 101 7
	leaq	-80(%rbx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L61
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L61:
	movl	-80(%rbx), %edx
	movq	-280(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z3DFSP5vnodei
	.loc 1 102 10
	movl	$10, %edi
	call	putchar@PLT
.LEHE5:
	leaq	-80(%rbx), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$-8, (%rax)
.LBE14:
.LBE13:
.LBE3:
	.loc 1 105 2
	jmp	.L62
.L70:
	endbr64
.LBB20:
.LBB16:
.LBB6:
	leaq	-160(%rbx), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	movq	%rax, %rbx
	jmp	.L64
.L71:
	endbr64
.LBE6:
.LBE16:
.LBB17:
.LBB9:
	leaq	-144(%rbx), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	leaq	-128(%rbx), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	leaq	-112(%rbx), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	movq	%rax, %rbx
	jmp	.L64
.L72:
	endbr64
.LBE9:
.LBE17:
.LBB18:
.LBB12:
	leaq	-96(%rbx), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	movq	%rax, %rbx
	jmp	.L64
.L73:
	endbr64
.LBE12:
.LBE18:
.LBB19:
.LBB15:
	leaq	-80(%rbx), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	movq	%rax, %rbx
	jmp	.L64
.L69:
	endbr64
	movq	%rax, %rbx
.L64:
	movq	%rsp, %rax
	subq	%rsp, %rax
	movq	-344(%rbp), %r15
	addq	%r15, %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	call	__asan_allocas_unpoison@PLT
.LVL1:
	movq	%r15, %rsp
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.LBE15:
.LBE19:
.LBE20:
	.cfi_endproc
.LFE13:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA13:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13-.LLSDACSB13
.LLSDACSB13:
	.uleb128 .LEHB0-.LFB13
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L69-.LFB13
	.uleb128 0
	.uleb128 .LEHB1-.LFB13
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L70-.LFB13
	.uleb128 0
	.uleb128 .LEHB2-.LFB13
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L71-.LFB13
	.uleb128 0
	.uleb128 .LEHB3-.LFB13
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L72-.LFB13
	.uleb128 0
	.uleb128 .LEHB4-.LFB13
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L69-.LFB13
	.uleb128 0
	.uleb128 .LEHB5-.LFB13
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L73-.LFB13
	.uleb128 0
	.uleb128 .LEHB6-.LFB13
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE13:
	.text
	.size	main, .-main
	.section	.rodata
	.align 32
.LC9:
	.string	"%s "
	.zero	60
	.text
	.globl	_Z3DFSP5vnodei
	.type	_Z3DFSP5vnodei, @function
_Z3DFSP5vnodei:
.LASANPC17:
.LFB17:
	.loc 1 113 44
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 116 10
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L75
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L75:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag(%rip), %rax
	movl	$1, (%rdx,%rax)
	.loc 1 117 26
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 117 27
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 117 8
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 118 17
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 118 18
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 118 4
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L76
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L76:
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L82:
	.loc 1 119 8
	cmpq	$0, -8(%rbp)
	je	.L83
	.loc 1 120 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L78
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L78:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 121 13
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L79
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L79:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 121 3
	testl	%eax, %eax
	jne	.L80
	.loc 1 122 7
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z3DFSP5vnodei
.L80:
	.loc 1 123 5
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L81
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L81:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 119 2
	jmp	.L82
.L83:
	.loc 1 126 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_Z3DFSP5vnodei, .-_Z3DFSP5vnodei
	.globl	_Z4primP5vnodeii
	.type	_Z4primP5vnodeii, @function
_Z4primP5vnodeii:
.LASANPC18:
.LFB18:
	.loc 1 135 61
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	.loc 1 137 31
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 137 30
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
.LBB21:
	.loc 1 139 10
	movl	$0, -64(%rbp)
.L87:
	.loc 1 139 19 discriminator 3
	movl	-64(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.L85
	.loc 1 140 8 discriminator 2
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 140 9 discriminator 2
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 140 21 discriminator 2
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L86
	.loc 1 140 21 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L86:
	.loc 1 140 21 discriminator 2
	movq	$0, 16(%rax)
	.loc 1 139 2 is_stmt 1 discriminator 2
	addl	$1, -64(%rbp)
	jmp	.L87
.L85:
.LBE21:
	.loc 1 142 11
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L88
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L88:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	movl	$1, (%rdx,%rax)
	.loc 1 144 47
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 145 14
	movl	$10000, -44(%rbp)
	.loc 1 147 8
	movl	$0, -56(%rbp)
.L124:
	.loc 1 147 21 discriminator 1
	movl	-80(%rbp), %eax
	subl	$1, %eax
	.loc 1 147 15 discriminator 1
	cmpl	%eax, -56(%rbp)
	jge	.L89
	.loc 1 148 7
	movl	$10000, -44(%rbp)
	.loc 1 149 9
	movl	$0, -60(%rbp)
.L101:
	.loc 1 149 16 discriminator 1
	movl	-60(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.L90
	.loc 1 150 14
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L91
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L91:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 150 4
	cmpl	$1, %eax
	jne	.L92
	.loc 1 151 20
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 151 21
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 151 7
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L93
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L93:
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.L100:
	.loc 1 152 11
	cmpq	$0, -40(%rbp)
	je	.L92
	.loc 1 153 16
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L94
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L94:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 153 6
	cmpl	$1, %eax
	jne	.L95
	.loc 1 153 29 discriminator 1
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L96
	.loc 1 153 29 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L96:
	.loc 1 153 29 discriminator 1
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 153 23 is_stmt 1 discriminator 1
	cmpl	%eax, -44(%rbp)
	jle	.L95
	.loc 1 153 54 discriminator 2
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L97
	.loc 1 153 54 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L97:
	.loc 1 153 54 discriminator 2
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 153 60 is_stmt 1 discriminator 2
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	addl	$3, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L98
	.loc 1 153 60 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L98:
	.loc 1 153 60 discriminator 2
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 153 42 is_stmt 1 discriminator 2
	testl	%eax, %eax
	jne	.L95
	.loc 1 154 11
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 1 155 9
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	.loc 1 156 9
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 157 9
	movl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)
.L95:
	.loc 1 159 8
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L99
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L99:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 152 5
	jmp	.L100
.L92:
	.loc 1 149 3 discriminator 2
	addl	$1, -60(%rbp)
	jmp	.L101
.L90:
	.loc 1 164 12
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L102
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L102:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	flag2(%rip), %rax
	movl	$1, (%rdx,%rax)
	.loc 1 166 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L103
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L103:
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 167 13
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L104
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L104:
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 4(%rax)
	.loc 1 168 11
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L105
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L105:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 170 11
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 170 12
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 170 14
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L106
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L106:
	movq	16(%rax), %rax
	.loc 1 170 3
	testq	%rax, %rax
	jne	.L107
	.loc 1 171 9
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 171 10
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 171 22
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L108
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L108:
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L109
.L107:
	.loc 1 173 13
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 173 14
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 173 6
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L110
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L110:
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L113:
	.loc 1 174 13
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L111
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L111:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 174 18
	testq	%rax, %rax
	je	.L112
	.loc 1 175 7
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 174 4
	jmp	.L113
.L112:
	.loc 1 176 12
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L114
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L114:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L109:
	.loc 1 178 11
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 178 12
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 178 14
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L115
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L115:
	movq	16(%rax), %rax
	.loc 1 178 3
	testq	%rax, %rax
	jne	.L116
	.loc 1 179 9
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 179 10
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 179 22
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L117
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L117:
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L118
.L116:
	.loc 1 181 13
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 181 14
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 181 6
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L119
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L119:
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L122:
	.loc 1 182 13
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L120
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L120:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 182 18
	testq	%rax, %rax
	je	.L121
	.loc 1 183 7
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 182 4
	jmp	.L122
.L121:
	.loc 1 184 12
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L123
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L123:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L118:
	.loc 1 186 5 discriminator 2
	movq	$0, -40(%rbp)
	.loc 1 147 2 discriminator 2
	addl	$1, -56(%rbp)
	jmp	.L124
.L89:
	.loc 1 189 9
	movq	-16(%rbp), %rax
	.loc 1 190 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_Z4primP5vnodeii, .-_Z4primP5vnodeii
	.globl	__odr_asan.flag2
	.bss
	.type	__odr_asan.flag2, @object
	.size	__odr_asan.flag2, 1
__odr_asan.flag2:
	.zero	1
	.section	.rodata
.LC10:
	.string	"../main1.cpp"
	.section	.data.rel.local,"aw"
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC10
	.long	6
	.long	5
	.globl	__odr_asan.flag
	.bss
	.type	__odr_asan.flag, @object
	.size	__odr_asan.flag, 1
__odr_asan.flag:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC10
	.long	5
	.long	5
	.section	.rodata
.LC11:
	.string	"flag2"
.LC12:
	.string	"flag"
.LC13:
	.string	"*.LC7"
.LC14:
	.string	"*.LC1"
.LC15:
	.string	"*.LC8"
.LC16:
	.string	"*.LC4"
.LC17:
	.string	"*.LC3"
.LC18:
	.string	"*.LC2"
.LC19:
	.string	"*.LC9"
.LC20:
	.string	"*.LC5"
.LC21:
	.string	"*.LC6"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 704
.LASAN0:
	.quad	flag2
	.quad	40960
	.quad	40992
	.quad	.LC11
	.quad	.LC10
	.quad	0
	.quad	.LASANLOC1
	.quad	__odr_asan.flag2
	.quad	flag
	.quad	40960
	.quad	40992
	.quad	.LC12
	.quad	.LC10
	.quad	0
	.quad	.LASANLOC2
	.quad	__odr_asan.flag
	.quad	.LC7
	.quad	5
	.quad	64
	.quad	.LC13
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	3
	.quad	64
	.quad	.LC14
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	14
	.quad	64
	.quad	.LC15
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	5
	.quad	64
	.quad	.LC16
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	7
	.quad	64
	.quad	.LC17
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	3
	.quad	64
	.quad	.LC18
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	4
	.quad	64
	.quad	.LC19
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	7
	.quad	64
	.quad	.LC20
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	4
	.quad	64
	.quad	.LC21
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$11, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$11, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/c++/9/cstdlib"
	.file 9 "/usr/include/c++/9/bits/std_abs.h"
	.file 10 "/usr/include/x86_64-linux-gnu/c++/9/bits/c++config.h"
	.file 11 "/usr/include/stdlib.h"
	.file 12 "/usr/include/c++/9/stdlib.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdcc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF115
	.byte	0x4
	.long	.LASF116
	.long	.LASF117
	.long	.Ldebug_ranges0+0xc0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x1b
	.long	0x35
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x68
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x68
	.uleb128 0x6
	.byte	0x8
	.long	0x8d
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	0x8d
	.uleb128 0x8
	.long	.LASF103
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x220
	.uleb128 0x9
	.long	.LASF11
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x87
	.byte	0x8
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x87
	.byte	0x10
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x87
	.byte	0x18
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x87
	.byte	0x20
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x87
	.byte	0x28
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x87
	.byte	0x30
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x87
	.byte	0x38
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x87
	.byte	0x40
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x87
	.byte	0x48
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x87
	.byte	0x50
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x87
	.byte	0x58
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x239
	.byte	0x60
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x23f
	.byte	0x68
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x6f
	.byte	0x78
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x245
	.byte	0x83
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x255
	.byte	0x88
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x260
	.byte	0x98
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x26b
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x23f
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x271
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x99
	.uleb128 0xa
	.long	.LASF118
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF41
	.uleb128 0x6
	.byte	0x8
	.long	0x234
	.uleb128 0x6
	.byte	0x8
	.long	0x99
	.uleb128 0xc
	.long	0x8d
	.long	0x255
	.uleb128 0xd
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22c
	.uleb128 0xb
	.long	.LASF42
	.uleb128 0x6
	.byte	0x8
	.long	0x25b
	.uleb128 0xb
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x266
	.uleb128 0xc
	.long	0x8d
	.long	0x281
	.uleb128 0xd
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x94
	.uleb128 0x7
	.long	0x281
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x298
	.uleb128 0x6
	.byte	0x8
	.long	0x220
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x298
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x298
	.uleb128 0xe
	.long	.LASF47
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xc
	.long	0x287
	.long	0x2cd
	.uleb128 0xf
	.byte	0
	.uleb128 0xe
	.long	.LASF48
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2c2
	.uleb128 0xe
	.long	.LASF49
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0xe
	.long	.LASF50
	.byte	0x7
	.byte	0x1f
	.byte	0x1a
	.long	0x2c2
	.uleb128 0x10
	.string	"std"
	.byte	0xd
	.byte	0
	.long	0x4ac
	.uleb128 0x11
	.long	.LASF56
	.byte	0xa
	.value	0x114
	.byte	0x41
	.uleb128 0x12
	.byte	0xa
	.value	0x114
	.byte	0x41
	.long	0x2fc
	.uleb128 0x13
	.byte	0x8
	.byte	0x7f
	.byte	0xb
	.long	0x56a
	.uleb128 0x13
	.byte	0x8
	.byte	0x80
	.byte	0xb
	.long	0x59e
	.uleb128 0x13
	.byte	0x8
	.byte	0x86
	.byte	0xb
	.long	0x61a
	.uleb128 0x13
	.byte	0x8
	.byte	0x89
	.byte	0xb
	.long	0x638
	.uleb128 0x13
	.byte	0x8
	.byte	0x8c
	.byte	0xb
	.long	0x653
	.uleb128 0x13
	.byte	0x8
	.byte	0x8d
	.byte	0xb
	.long	0x669
	.uleb128 0x13
	.byte	0x8
	.byte	0x8e
	.byte	0xb
	.long	0x67f
	.uleb128 0x13
	.byte	0x8
	.byte	0x8f
	.byte	0xb
	.long	0x695
	.uleb128 0x13
	.byte	0x8
	.byte	0x91
	.byte	0xb
	.long	0x6c0
	.uleb128 0x13
	.byte	0x8
	.byte	0x94
	.byte	0xb
	.long	0x6dc
	.uleb128 0x13
	.byte	0x8
	.byte	0x96
	.byte	0xb
	.long	0x6f3
	.uleb128 0x13
	.byte	0x8
	.byte	0x99
	.byte	0xb
	.long	0x70f
	.uleb128 0x13
	.byte	0x8
	.byte	0x9a
	.byte	0xb
	.long	0x72b
	.uleb128 0x13
	.byte	0x8
	.byte	0x9b
	.byte	0xb
	.long	0x75e
	.uleb128 0x13
	.byte	0x8
	.byte	0x9d
	.byte	0xb
	.long	0x77f
	.uleb128 0x13
	.byte	0x8
	.byte	0xa0
	.byte	0xb
	.long	0x7a1
	.uleb128 0x13
	.byte	0x8
	.byte	0xa3
	.byte	0xb
	.long	0x7b4
	.uleb128 0x13
	.byte	0x8
	.byte	0xa5
	.byte	0xb
	.long	0x7c1
	.uleb128 0x13
	.byte	0x8
	.byte	0xa6
	.byte	0xb
	.long	0x7d4
	.uleb128 0x13
	.byte	0x8
	.byte	0xa7
	.byte	0xb
	.long	0x7f5
	.uleb128 0x13
	.byte	0x8
	.byte	0xa8
	.byte	0xb
	.long	0x815
	.uleb128 0x13
	.byte	0x8
	.byte	0xa9
	.byte	0xb
	.long	0x835
	.uleb128 0x13
	.byte	0x8
	.byte	0xab
	.byte	0xb
	.long	0x84c
	.uleb128 0x13
	.byte	0x8
	.byte	0xac
	.byte	0xb
	.long	0x873
	.uleb128 0x13
	.byte	0x8
	.byte	0xf0
	.byte	0x16
	.long	0x5d9
	.uleb128 0x13
	.byte	0x8
	.byte	0xf5
	.byte	0x16
	.long	0x503
	.uleb128 0x13
	.byte	0x8
	.byte	0xf6
	.byte	0x16
	.long	0x88f
	.uleb128 0x13
	.byte	0x8
	.byte	0xf8
	.byte	0x16
	.long	0x8ab
	.uleb128 0x13
	.byte	0x8
	.byte	0xf9
	.byte	0x16
	.long	0x901
	.uleb128 0x13
	.byte	0x8
	.byte	0xfa
	.byte	0x16
	.long	0x8c1
	.uleb128 0x13
	.byte	0x8
	.byte	0xfb
	.byte	0x16
	.long	0x8e1
	.uleb128 0x13
	.byte	0x8
	.byte	0xfc
	.byte	0x16
	.long	0x91c
	.uleb128 0x14
	.string	"abs"
	.byte	0x9
	.byte	0x4f
	.byte	0x3
	.long	.LASF51
	.long	0x53b
	.long	0x428
	.uleb128 0x15
	.long	0x53b
	.byte	0
	.uleb128 0x14
	.string	"abs"
	.byte	0x9
	.byte	0x4b
	.byte	0x3
	.long	.LASF52
	.long	0x52d
	.long	0x442
	.uleb128 0x15
	.long	0x52d
	.byte	0
	.uleb128 0x14
	.string	"abs"
	.byte	0x9
	.byte	0x47
	.byte	0x3
	.long	.LASF53
	.long	0x534
	.long	0x45c
	.uleb128 0x15
	.long	0x534
	.byte	0
	.uleb128 0x14
	.string	"abs"
	.byte	0x9
	.byte	0x3d
	.byte	0x3
	.long	.LASF54
	.long	0x5d2
	.long	0x476
	.uleb128 0x15
	.long	0x5d2
	.byte	0
	.uleb128 0x14
	.string	"abs"
	.byte	0x9
	.byte	0x38
	.byte	0x3
	.long	.LASF55
	.long	0x68
	.long	0x490
	.uleb128 0x15
	.long	0x68
	.byte	0
	.uleb128 0x16
	.string	"div"
	.byte	0x8
	.byte	0xb1
	.byte	0x3
	.long	.LASF57
	.long	0x59e
	.uleb128 0x15
	.long	0x68
	.uleb128 0x15
	.long	0x68
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF119
	.byte	0xa
	.value	0x116
	.byte	0xb
	.long	0x51f
	.uleb128 0x11
	.long	.LASF56
	.byte	0xa
	.value	0x118
	.byte	0x41
	.uleb128 0x12
	.byte	0xa
	.value	0x118
	.byte	0x41
	.long	0x4b9
	.uleb128 0x13
	.byte	0x8
	.byte	0xc8
	.byte	0xb
	.long	0x5d9
	.uleb128 0x13
	.byte	0x8
	.byte	0xd8
	.byte	0xb
	.long	0x88f
	.uleb128 0x13
	.byte	0x8
	.byte	0xe3
	.byte	0xb
	.long	0x8ab
	.uleb128 0x13
	.byte	0x8
	.byte	0xe4
	.byte	0xb
	.long	0x8c1
	.uleb128 0x13
	.byte	0x8
	.byte	0xe5
	.byte	0xb
	.long	0x8e1
	.uleb128 0x13
	.byte	0x8
	.byte	0xe7
	.byte	0xb
	.long	0x901
	.uleb128 0x13
	.byte	0x8
	.byte	0xe8
	.byte	0xb
	.long	0x91c
	.uleb128 0x16
	.string	"div"
	.byte	0x8
	.byte	0xd5
	.byte	0x3
	.long	.LASF58
	.long	0x5d9
	.uleb128 0x15
	.long	0x5d2
	.uleb128 0x15
	.long	0x5d2
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x20
	.byte	0x3
	.long	.LASF59
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF60
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF62
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF63
	.uleb128 0x18
	.byte	0x8
	.byte	0xb
	.byte	0x3b
	.byte	0x3
	.long	.LASF66
	.long	0x56a
	.uleb128 0x9
	.long	.LASF64
	.byte	0xb
	.byte	0x3c
	.byte	0x9
	.long	0x61
	.byte	0
	.uleb128 0x19
	.string	"rem"
	.byte	0xb
	.byte	0x3d
	.byte	0x9
	.long	0x61
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0xb
	.byte	0x3e
	.byte	0x5
	.long	0x542
	.uleb128 0x18
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.byte	0x3
	.long	.LASF67
	.long	0x59e
	.uleb128 0x9
	.long	.LASF64
	.byte	0xb
	.byte	0x44
	.byte	0xe
	.long	0x68
	.byte	0
	.uleb128 0x19
	.string	"rem"
	.byte	0xb
	.byte	0x45
	.byte	0xe
	.long	0x68
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0xb
	.byte	0x46
	.byte	0x5
	.long	0x576
	.uleb128 0x18
	.byte	0x10
	.byte	0xb
	.byte	0x4d
	.byte	0x3
	.long	.LASF69
	.long	0x5d2
	.uleb128 0x9
	.long	.LASF64
	.byte	0xb
	.byte	0x4e
	.byte	0x13
	.long	0x5d2
	.byte	0
	.uleb128 0x19
	.string	"rem"
	.byte	0xb
	.byte	0x4f
	.byte	0x13
	.long	0x5d2
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF70
	.uleb128 0x2
	.long	.LASF71
	.byte	0xb
	.byte	0x50
	.byte	0x5
	.long	0x5aa
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF72
	.uleb128 0x1a
	.long	.LASF73
	.byte	0xb
	.value	0x328
	.byte	0xf
	.long	0x5f9
	.uleb128 0x6
	.byte	0x8
	.long	0x5ff
	.uleb128 0x1b
	.long	0x61
	.long	0x613
	.uleb128 0x15
	.long	0x613
	.uleb128 0x15
	.long	0x613
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x619
	.uleb128 0x1c
	.uleb128 0x1d
	.long	.LASF74
	.byte	0xb
	.value	0x253
	.byte	0xc
	.long	0x61
	.long	0x631
	.uleb128 0x15
	.long	0x631
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x637
	.uleb128 0x1e
	.uleb128 0x1f
	.long	.LASF75
	.byte	0xb
	.value	0x258
	.byte	0x12
	.long	.LASF75
	.long	0x61
	.long	0x653
	.uleb128 0x15
	.long	0x631
	.byte	0
	.uleb128 0x20
	.long	.LASF76
	.byte	0xb
	.byte	0x65
	.byte	0xf
	.long	0x534
	.long	0x669
	.uleb128 0x15
	.long	0x281
	.byte	0
	.uleb128 0x20
	.long	.LASF77
	.byte	0xb
	.byte	0x68
	.byte	0xc
	.long	0x61
	.long	0x67f
	.uleb128 0x15
	.long	0x281
	.byte	0
	.uleb128 0x20
	.long	.LASF78
	.byte	0xb
	.byte	0x6b
	.byte	0x11
	.long	0x68
	.long	0x695
	.uleb128 0x15
	.long	0x281
	.byte	0
	.uleb128 0x1d
	.long	.LASF79
	.byte	0xb
	.value	0x334
	.byte	0xe
	.long	0x43
	.long	0x6c0
	.uleb128 0x15
	.long	0x613
	.uleb128 0x15
	.long	0x613
	.uleb128 0x15
	.long	0x29
	.uleb128 0x15
	.long	0x29
	.uleb128 0x15
	.long	0x5ec
	.byte	0
	.uleb128 0x21
	.string	"div"
	.byte	0xb
	.value	0x354
	.byte	0xe
	.long	0x56a
	.long	0x6dc
	.uleb128 0x15
	.long	0x61
	.uleb128 0x15
	.long	0x61
	.byte	0
	.uleb128 0x1d
	.long	.LASF80
	.byte	0xb
	.value	0x27a
	.byte	0xe
	.long	0x87
	.long	0x6f3
	.uleb128 0x15
	.long	0x281
	.byte	0
	.uleb128 0x1d
	.long	.LASF81
	.byte	0xb
	.value	0x356
	.byte	0xf
	.long	0x59e
	.long	0x70f
	.uleb128 0x15
	.long	0x68
	.uleb128 0x15
	.long	0x68
	.byte	0
	.uleb128 0x1d
	.long	.LASF82
	.byte	0xb
	.value	0x39a
	.byte	0xc
	.long	0x61
	.long	0x72b
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x29
	.byte	0
	.uleb128 0x1d
	.long	.LASF83
	.byte	0xb
	.value	0x3a5
	.byte	0xf
	.long	0x29
	.long	0x74c
	.uleb128 0x15
	.long	0x74c
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x29
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x752
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF84
	.uleb128 0x7
	.long	0x752
	.uleb128 0x1d
	.long	.LASF85
	.byte	0xb
	.value	0x39d
	.byte	0xc
	.long	0x61
	.long	0x77f
	.uleb128 0x15
	.long	0x74c
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x29
	.byte	0
	.uleb128 0x22
	.long	.LASF87
	.byte	0xb
	.value	0x33e
	.byte	0xd
	.long	0x7a1
	.uleb128 0x15
	.long	0x43
	.uleb128 0x15
	.long	0x29
	.uleb128 0x15
	.long	0x29
	.uleb128 0x15
	.long	0x5ec
	.byte	0
	.uleb128 0x23
	.long	.LASF86
	.byte	0xb
	.value	0x26f
	.byte	0xd
	.long	0x7b4
	.uleb128 0x15
	.long	0x61
	.byte	0
	.uleb128 0x24
	.long	.LASF120
	.byte	0xb
	.value	0x1c5
	.byte	0xc
	.long	0x61
	.uleb128 0x22
	.long	.LASF88
	.byte	0xb
	.value	0x1c7
	.byte	0xd
	.long	0x7d4
	.uleb128 0x15
	.long	0x3c
	.byte	0
	.uleb128 0x20
	.long	.LASF89
	.byte	0xb
	.byte	0x75
	.byte	0xf
	.long	0x534
	.long	0x7ef
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x7ef
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x87
	.uleb128 0x20
	.long	.LASF90
	.byte	0xb
	.byte	0xb0
	.byte	0x11
	.long	0x68
	.long	0x815
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x7ef
	.uleb128 0x15
	.long	0x61
	.byte	0
	.uleb128 0x20
	.long	.LASF91
	.byte	0xb
	.byte	0xb4
	.byte	0x1a
	.long	0x35
	.long	0x835
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x7ef
	.uleb128 0x15
	.long	0x61
	.byte	0
	.uleb128 0x1d
	.long	.LASF92
	.byte	0xb
	.value	0x310
	.byte	0xc
	.long	0x61
	.long	0x84c
	.uleb128 0x15
	.long	0x281
	.byte	0
	.uleb128 0x1d
	.long	.LASF93
	.byte	0xb
	.value	0x3a8
	.byte	0xf
	.long	0x29
	.long	0x86d
	.uleb128 0x15
	.long	0x87
	.uleb128 0x15
	.long	0x86d
	.uleb128 0x15
	.long	0x29
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x759
	.uleb128 0x1d
	.long	.LASF94
	.byte	0xb
	.value	0x3a1
	.byte	0xc
	.long	0x61
	.long	0x88f
	.uleb128 0x15
	.long	0x87
	.uleb128 0x15
	.long	0x752
	.byte	0
	.uleb128 0x1d
	.long	.LASF95
	.byte	0xb
	.value	0x35a
	.byte	0x1e
	.long	0x5d9
	.long	0x8ab
	.uleb128 0x15
	.long	0x5d2
	.uleb128 0x15
	.long	0x5d2
	.byte	0
	.uleb128 0x20
	.long	.LASF96
	.byte	0xb
	.byte	0x70
	.byte	0x24
	.long	0x5d2
	.long	0x8c1
	.uleb128 0x15
	.long	0x281
	.byte	0
	.uleb128 0x20
	.long	.LASF97
	.byte	0xb
	.byte	0xc8
	.byte	0x16
	.long	0x5d2
	.long	0x8e1
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x7ef
	.uleb128 0x15
	.long	0x61
	.byte	0
	.uleb128 0x20
	.long	.LASF98
	.byte	0xb
	.byte	0xcd
	.byte	0x1f
	.long	0x5e5
	.long	0x901
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x7ef
	.uleb128 0x15
	.long	0x61
	.byte	0
	.uleb128 0x20
	.long	.LASF99
	.byte	0xb
	.byte	0x7b
	.byte	0xe
	.long	0x52d
	.long	0x91c
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x7ef
	.byte	0
	.uleb128 0x20
	.long	.LASF100
	.byte	0xb
	.byte	0x7e
	.byte	0x14
	.long	0x53b
	.long	0x937
	.uleb128 0x15
	.long	0x281
	.uleb128 0x15
	.long	0x7ef
	.byte	0
	.uleb128 0x13
	.byte	0xc
	.byte	0x27
	.byte	0xc
	.long	0x61a
	.uleb128 0x13
	.byte	0xc
	.byte	0x2b
	.byte	0xe
	.long	0x638
	.uleb128 0x13
	.byte	0xc
	.byte	0x2e
	.byte	0xe
	.long	0x7a1
	.uleb128 0x13
	.byte	0xc
	.byte	0x33
	.byte	0xc
	.long	0x56a
	.uleb128 0x13
	.byte	0xc
	.byte	0x34
	.byte	0xc
	.long	0x59e
	.uleb128 0x13
	.byte	0xc
	.byte	0x36
	.byte	0xc
	.long	0x40e
	.uleb128 0x13
	.byte	0xc
	.byte	0x36
	.byte	0xc
	.long	0x428
	.uleb128 0x13
	.byte	0xc
	.byte	0x36
	.byte	0xc
	.long	0x442
	.uleb128 0x13
	.byte	0xc
	.byte	0x36
	.byte	0xc
	.long	0x45c
	.uleb128 0x13
	.byte	0xc
	.byte	0x36
	.byte	0xc
	.long	0x476
	.uleb128 0x21
	.string	"abs"
	.byte	0xb
	.value	0x348
	.byte	0xc
	.long	0x61
	.long	0x99e
	.uleb128 0x15
	.long	0x61
	.byte	0
	.uleb128 0x13
	.byte	0xc
	.byte	0x36
	.byte	0xc
	.long	0x987
	.uleb128 0x13
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x653
	.uleb128 0x13
	.byte	0xc
	.byte	0x38
	.byte	0xc
	.long	0x669
	.uleb128 0x13
	.byte	0xc
	.byte	0x39
	.byte	0xc
	.long	0x67f
	.uleb128 0x13
	.byte	0xc
	.byte	0x3a
	.byte	0xc
	.long	0x695
	.uleb128 0x13
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.long	0x503
	.uleb128 0x13
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.long	0x490
	.uleb128 0x13
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.long	0x6c0
	.uleb128 0x13
	.byte	0xc
	.byte	0x3e
	.byte	0xc
	.long	0x6dc
	.uleb128 0x13
	.byte	0xc
	.byte	0x40
	.byte	0xc
	.long	0x6f3
	.uleb128 0x13
	.byte	0xc
	.byte	0x43
	.byte	0xc
	.long	0x70f
	.uleb128 0x13
	.byte	0xc
	.byte	0x44
	.byte	0xc
	.long	0x72b
	.uleb128 0x13
	.byte	0xc
	.byte	0x45
	.byte	0xc
	.long	0x75e
	.uleb128 0x13
	.byte	0xc
	.byte	0x47
	.byte	0xc
	.long	0x77f
	.uleb128 0x13
	.byte	0xc
	.byte	0x48
	.byte	0xc
	.long	0x7b4
	.uleb128 0x13
	.byte	0xc
	.byte	0x4a
	.byte	0xc
	.long	0x7c1
	.uleb128 0x13
	.byte	0xc
	.byte	0x4b
	.byte	0xc
	.long	0x7d4
	.uleb128 0x13
	.byte	0xc
	.byte	0x4c
	.byte	0xc
	.long	0x7f5
	.uleb128 0x13
	.byte	0xc
	.byte	0x4d
	.byte	0xc
	.long	0x815
	.uleb128 0x13
	.byte	0xc
	.byte	0x4e
	.byte	0xc
	.long	0x835
	.uleb128 0x13
	.byte	0xc
	.byte	0x50
	.byte	0xc
	.long	0x84c
	.uleb128 0x13
	.byte	0xc
	.byte	0x51
	.byte	0xc
	.long	0x873
	.uleb128 0xc
	.long	0x61
	.long	0xa5f
	.uleb128 0x25
	.long	0x35
	.value	0x27ff
	.byte	0
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.long	0xa4e
	.uleb128 0x9
	.byte	0x3
	.quad	flag
	.uleb128 0x26
	.long	.LASF102
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.long	0xa4e
	.uleb128 0x9
	.byte	0x3
	.quad	flag2
	.uleb128 0x8
	.long	.LASF104
	.byte	0x10
	.byte	0x1
	.byte	0xa
	.byte	0x8
	.long	0xac0
	.uleb128 0x9
	.long	.LASF105
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.long	0x61
	.byte	0
	.uleb128 0x9
	.long	.LASF106
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.long	0x61
	.byte	0x4
	.uleb128 0x9
	.long	.LASF107
	.byte	0x1
	.byte	0xd
	.byte	0xf
	.long	0xac0
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa8b
	.uleb128 0x8
	.long	.LASF108
	.byte	0x18
	.byte	0x1
	.byte	0x10
	.byte	0x8
	.long	0xb01
	.uleb128 0x9
	.long	.LASF109
	.byte	0x1
	.byte	0x11
	.byte	0x7
	.long	0xb01
	.byte	0
	.uleb128 0x9
	.long	.LASF110
	.byte	0x1
	.byte	0x12
	.byte	0xf
	.long	0xac0
	.byte	0x10
	.uleb128 0x27
	.long	.LASF108
	.long	.LASF121
	.long	0xafa
	.uleb128 0x28
	.long	0xc0f
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x8d
	.long	0xb11
	.uleb128 0xd
	.long	0x35
	.byte	0xe
	.byte	0
	.uleb128 0x29
	.long	.LASF122
	.byte	0x1
	.byte	0x87
	.byte	0xf
	.long	.LASF123
	.long	0xc0f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xc0f
	.uleb128 0x2a
	.long	.LASF111
	.byte	0x1
	.byte	0x87
	.byte	0x21
	.long	0xc0f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.byte	0x87
	.byte	0x32
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"num"
	.byte	0x1
	.byte	0x87
	.byte	0x38
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF112
	.byte	0x1
	.byte	0x88
	.byte	0x10
	.long	0xc0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0x90
	.byte	0xf
	.long	0xac0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.byte	0x90
	.byte	0x12
	.long	0xac0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.byte	0x90
	.byte	0x15
	.long	0xac0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.byte	0x90
	.byte	0x18
	.long	0xac0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0x91
	.byte	0x6
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.byte	0x91
	.byte	0x8
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.byte	0x91
	.byte	0xa
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"m"
	.byte	0x1
	.byte	0x91
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"min"
	.byte	0x1
	.byte	0x91
	.byte	0xe
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.byte	0x8b
	.byte	0xa
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xac6
	.uleb128 0x7
	.long	0xc0f
	.uleb128 0x2f
	.string	"DFS"
	.byte	0x1
	.byte	0x71
	.byte	0x6
	.long	.LASF124
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xc73
	.uleb128 0x2a
	.long	.LASF111
	.byte	0x1
	.byte	0x71
	.byte	0x17
	.long	0xc0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.byte	0x71
	.byte	0x29
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0x72
	.byte	0xf
	.long	0xac0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.byte	0x73
	.byte	0x6
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x30
	.long	.LASF113
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.long	0x61
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xd78
	.uleb128 0x2d
	.string	"a"
	.byte	0x1
	.byte	0x19
	.byte	0x7
	.long	0xb01
	.uleb128 0x2
	.byte	0x73
	.sleb128 -64
	.uleb128 0x2d
	.string	"num"
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.long	0x61
	.uleb128 0x3
	.byte	0x73
	.sleb128 -176
	.uleb128 0x2c
	.long	.LASF111
	.byte	0x1
	.byte	0x1f
	.byte	0xf
	.long	0xd78
	.uleb128 0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x6
	.uleb128 0x2c
	.long	.LASF112
	.byte	0x1
	.byte	0x20
	.byte	0x10
	.long	0xc0f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x31
	.long	.Ldebug_ranges0+0
	.long	0xced
	.uleb128 0x2c
	.long	.LASF114
	.byte	0x1
	.byte	0x26
	.byte	0x8
	.long	0x61
	.uleb128 0x3
	.byte	0x73
	.sleb128 -160
	.byte	0
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x30
	.long	0xd4b
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0x2b
	.byte	0x11
	.long	0xac0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.byte	0x2b
	.byte	0x14
	.long	0xac0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.byte	0x2b
	.byte	0x17
	.long	0xac0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.byte	0x2c
	.byte	0x8
	.long	0x61
	.uleb128 0x3
	.byte	0x73
	.sleb128 -144
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.byte	0x2c
	.byte	0xa
	.long	0x61
	.uleb128 0x3
	.byte	0x73
	.sleb128 -128
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.long	0x61
	.uleb128 0x3
	.byte	0x73
	.sleb128 -112
	.byte	0
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x60
	.long	0xd63
	.uleb128 0x2d
	.string	"m"
	.byte	0x1
	.byte	0x57
	.byte	0x8
	.long	0x61
	.uleb128 0x3
	.byte	0x73
	.sleb128 -96
	.byte	0
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.byte	0x62
	.byte	0x8
	.long	0x61
	.uleb128 0x3
	.byte	0x73
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xac6
	.long	0xd8c
	.uleb128 0x33
	.long	0x35
	.uleb128 0x4
	.byte	0x91
	.sleb128 -328
	.byte	0x6
	.byte	0
	.uleb128 0x34
	.long	0xaed
	.byte	0x1
	.byte	0x10
	.byte	0x8
	.long	0xd9d
	.byte	0x2
	.long	0xda7
	.uleb128 0x35
	.long	.LASF125
	.long	0xc15
	.byte	0
	.uleb128 0x36
	.long	0xd8c
	.long	.LASF126
	.long	0xdc6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	0xd9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB5
	.quad	.LBE5
	.quad	.LBB6
	.quad	.LBE6
	.quad	0
	.quad	0
	.quad	.LBB8
	.quad	.LBE8
	.quad	.LBB9
	.quad	.LBE9
	.quad	0
	.quad	0
	.quad	.LBB11
	.quad	.LBE11
	.quad	.LBB12
	.quad	.LBE12
	.quad	0
	.quad	0
	.quad	.LBB14
	.quad	.LBE14
	.quad	.LBB15
	.quad	.LBE15
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB15
	.quad	.LFE15
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"getenv"
.LASF121:
	.string	"_ZN5vnodeC4Ev"
.LASF30:
	.string	"_shortbuf"
.LASF120:
	.string	"rand"
.LASF118:
	.string	"_IO_lock_t"
.LASF46:
	.string	"stderr"
.LASF92:
	.string	"system"
.LASF19:
	.string	"_IO_buf_end"
.LASF57:
	.string	"_ZSt3divll"
.LASF111:
	.string	"nodenumber"
.LASF104:
	.string	"node"
.LASF82:
	.string	"mblen"
.LASF17:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF107:
	.string	"next"
.LASF119:
	.string	"__gnu_cxx"
.LASF35:
	.string	"_freeres_list"
.LASF11:
	.string	"_flags"
.LASF84:
	.string	"wchar_t"
.LASF105:
	.string	"adjvex"
.LASF23:
	.string	"_markers"
.LASF49:
	.string	"_sys_nerr"
.LASF58:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF98:
	.string	"strtoull"
.LASF53:
	.string	"_ZSt3absd"
.LASF51:
	.string	"_ZSt3abse"
.LASF52:
	.string	"_ZSt3absf"
.LASF55:
	.string	"_ZSt3absl"
.LASF100:
	.string	"strtold"
.LASF97:
	.string	"strtoll"
.LASF54:
	.string	"_ZSt3absx"
.LASF45:
	.string	"stdout"
.LASF85:
	.string	"mbtowc"
.LASF115:
	.string	"GNU C++17 9.3.0 -mtune=generic -march=x86-64 -g -std=c++17 -fsanitize=address -fsanitize=leak -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF22:
	.string	"_IO_save_end"
.LASF61:
	.string	"float"
.LASF42:
	.string	"_IO_codecvt"
.LASF126:
	.string	"_ZN5vnodeC2Ev"
.LASF72:
	.string	"long long unsigned int"
.LASF109:
	.string	"vertex"
.LASF94:
	.string	"wctomb"
.LASF48:
	.string	"sys_errlist"
.LASF21:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_offset"
.LASF47:
	.string	"sys_nerr"
.LASF95:
	.string	"lldiv"
.LASF96:
	.string	"atoll"
.LASF25:
	.string	"_fileno"
.LASF117:
	.string	"/home/fengsc/Desktop/cpp/DataStructure/Graph/build"
.LASF7:
	.string	"size_t"
.LASF88:
	.string	"srand"
.LASF112:
	.string	"tree"
.LASF14:
	.string	"_IO_read_base"
.LASF79:
	.string	"bsearch"
.LASF44:
	.string	"stdin"
.LASF60:
	.string	"__float128"
.LASF122:
	.string	"prim"
.LASF10:
	.string	"char"
.LASF38:
	.string	"_mode"
.LASF66:
	.string	"5div_t"
.LASF41:
	.string	"_IO_marker"
.LASF12:
	.string	"_IO_read_ptr"
.LASF86:
	.string	"quick_exit"
.LASF64:
	.string	"quot"
.LASF83:
	.string	"mbstowcs"
.LASF15:
	.string	"_IO_write_base"
.LASF70:
	.string	"long long int"
.LASF116:
	.string	"../main1.cpp"
.LASF20:
	.string	"_IO_save_base"
.LASF56:
	.string	"__cxx11"
.LASF81:
	.string	"ldiv"
.LASF73:
	.string	"__compar_fn_t"
.LASF36:
	.string	"_freeres_buf"
.LASF59:
	.string	"__unknown__"
.LASF37:
	.string	"__pad5"
.LASF29:
	.string	"_vtable_offset"
.LASF63:
	.string	"long double"
.LASF113:
	.string	"main"
.LASF125:
	.string	"this"
.LASF13:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF114:
	.string	"numb"
.LASF74:
	.string	"atexit"
.LASF43:
	.string	"_IO_wide_data"
.LASF101:
	.string	"flag"
.LASF106:
	.string	"weight"
.LASF68:
	.string	"ldiv_t"
.LASF75:
	.string	"at_quick_exit"
.LASF34:
	.string	"_wide_data"
.LASF31:
	.string	"_lock"
.LASF91:
	.string	"strtoul"
.LASF0:
	.string	"long unsigned int"
.LASF27:
	.string	"_old_offset"
.LASF103:
	.string	"_IO_FILE"
.LASF65:
	.string	"div_t"
.LASF2:
	.string	"unsigned char"
.LASF16:
	.string	"_IO_write_ptr"
.LASF89:
	.string	"strtod"
.LASF99:
	.string	"strtof"
.LASF93:
	.string	"wcstombs"
.LASF90:
	.string	"strtol"
.LASF108:
	.string	"vnode"
.LASF123:
	.string	"_Z4primP5vnodeii"
.LASF67:
	.string	"6ldiv_t"
.LASF33:
	.string	"_codecvt"
.LASF8:
	.string	"__off_t"
.LASF124:
	.string	"_Z3DFSP5vnodei"
.LASF69:
	.string	"7lldiv_t"
.LASF4:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF71:
	.string	"lldiv_t"
.LASF76:
	.string	"atof"
.LASF50:
	.string	"_sys_errlist"
.LASF77:
	.string	"atoi"
.LASF78:
	.string	"atol"
.LASF62:
	.string	"double"
.LASF24:
	.string	"_chain"
.LASF40:
	.string	"FILE"
.LASF26:
	.string	"_flags2"
.LASF28:
	.string	"_cur_column"
.LASF9:
	.string	"__off64_t"
.LASF39:
	.string	"_unused2"
.LASF18:
	.string	"_IO_buf_base"
.LASF102:
	.string	"flag2"
.LASF110:
	.string	"firstedge"
.LASF87:
	.string	"qsort"
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
