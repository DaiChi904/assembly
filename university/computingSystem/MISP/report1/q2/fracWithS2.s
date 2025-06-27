	.file	"frac.c"
	.text
	.p2align 4
	.globl	createPattern
	.type	createPattern, @function
createPattern:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	%edi, 44(%rsp)
	movl	%esi, 40(%rsp)
.L16:
	pxor	%xmm1, %xmm1
	movq	.LC0(%rip), %rax
	cvtsi2sdl	40(%rsp), %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvttsd2sil	%xmm0, %ebp
	movslq	%ebp, %rbx
	leaq	0(,%rbx,8), %rdi
	call	malloc@PLT
	movq	%rax, 24(%rsp)
	testl	%ebp, %ebp
	je	.L5
	movq	24(%rsp), %rdi
	leal	-1(%rbp), %eax
	movq	%rdi, %r12
	leaq	8(%rdi,%rax,8), %rbp
	.p2align 4,,10
	.p2align 3
.L4:
	movq	%rbx, %rdi
	addq	$8, %r12
	call	malloc@PLT
	movq	%rax, -8(%r12)
	cmpq	%r12, %rbp
	jne	.L4
.L5:
	movl	40(%rsp), %eax
	pxor	%xmm1, %xmm1
	xorl	%r13d, %r13d
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
.L3:
	xorl	%r12d, %r12d
.L14:
	movq	$0, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L12:
	movq	.LC0(%rip), %rax
	movq	32(%rsp), %rbx
	movsd	%xmm1, 8(%rsp)
	movq	%rax, %xmm0
	movl	%ebx, 20(%rsp)
	call	pow@PLT
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	comisd	%xmm0, %xmm2
	jbe	.L28
	xorl	%r14d, %r14d
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L30:
	movq	24(%rsp), %rdx
	movq	(%rdx,%rbx,8), %rcx
	movb	$46, (%rcx,%rax)
.L7:
	addq	$1, %r14
.L10:
	movq	.LC0(%rip), %rax
	movsd	%xmm1, 8(%rsp)
	movl	%r14d, %ebp
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r14d, %xmm0
	comisd	%xmm0, %xmm2
	jbe	.L29
	movq	.LC0(%rip), %rax
	movsd	%xmm1, 8(%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movq	.LC0(%rip), %rax
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2sil	%xmm0, %ebx
	movq	%rax, %xmm0
	call	pow@PLT
	addl	20(%rsp), %ebx
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	movslq	%ebx, %rbx
	cvtsi2sdl	%r13d, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2sil	%xmm0, %eax
	addl	%ebp, %eax
	cmpl	$1, %r12d
	cltq
	jne	.L6
	cmpl	$1, %r13d
	je	.L30
.L6:
	movq	24(%rsp), %rsi
	addq	(%rsi,%rbx,8), %rax
	testq	%r15, %r15
	je	.L31
	movq	32(%rsp), %rdi
	movq	(%r15,%rdi,8), %rcx
	movzbl	(%rcx,%r14), %ecx
	movb	%cl, (%rax)
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L31:
	movb	$35, (%rax)
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L29:
	addq	$1, 32(%rsp)
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L28:
	addl	$1, %r12d
	cmpl	$3, %r12d
	jne	.L14
	addl	$1, %r13d
	cmpl	$3, %r13d
	jne	.L3
	movl	40(%rsp), %eax
	movl	44(%rsp), %edi
	cmpl	%edi, %eax
	je	.L25
	addl	$1, %eax
	movq	24(%rsp), %r15
	movl	%eax, 40(%rsp)
	jmp	.L16
.L25:
	movq	24(%rsp), %rax
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
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
	.cfi_endproc
.LFE39:
	.size	createPattern, .-createPattern
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d"
.LC2:
	.string	"\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	.LC1(%rip), %rdi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	$1, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	20(%rsp), %rsi
	call	__isoc99_scanf@PLT
	testl	%eax, %eax
	je	.L41
.L32:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L42
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movl	%r13d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L41:
	.cfi_restore_state
	movl	20(%rsp), %edi
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	%eax, %r13d
	xorl	%r12d, %r12d
	leaq	.LC2(%rip), %r14
	call	createPattern
	movq	%rax, %rbp
	.p2align 4,,10
	.p2align 3
.L34:
	pxor	%xmm1, %xmm1
	movq	.LC0(%rip), %rax
	cvtsi2sdl	20(%rsp), %xmm1
	movq	%rax, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	pow@PLT
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	comisd	%xmm0, %xmm2
	jbe	.L32
	xorl	%ebx, %ebx
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L35:
	movq	0(%rbp), %rax
	movsbl	(%rax,%rbx), %edi
	addq	$1, %rbx
	call	putchar@PLT
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rsp), %xmm1
.L36:
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	comisd	%xmm0, %xmm1
	ja	.L35
	movq	%r14, %rdi
	addl	$1, %r12d
	addq	$8, %rbp
	call	puts@PLT
	jmp	.L34
.L42:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1074266112
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
