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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	%edi, 28(%rsp)
	movl	%esi, 24(%rsp)
.L23:
	pxor	%xmm1, %xmm1
	movq	.LC0(%rip), %rax
	cvtsi2sdl	24(%rsp), %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvttsd2sil	%xmm0, %ebp
	movslq	%ebp, %rbx
	leaq	0(,%rbx,8), %rdi
	call	malloc@PLT
	movq	%rax, %r12
	testl	%ebp, %ebp
	je	.L5
	movq	%rax, %r13
	leal	-1(%rbp), %eax
	leaq	8(%r12,%rax,8), %rbp
	.p2align 4,,10
	.p2align 3
.L4:
	movq	%rbx, %rdi
	addq	$8, %r13
	call	malloc@PLT
	movq	%rax, -8(%r13)
	cmpq	%r13, %rbp
	jne	.L4
.L5:
	movl	24(%rsp), %eax
	pxor	%xmm1, %xmm1
	movl	$0, 16(%rsp)
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
.L3:
	cmpl	$1, 16(%rsp)
	sete	23(%rsp)
	xorl	%r14d, %r14d
.L21:
	cmpl	$1, %r14d
	sete	%al
	andb	23(%rsp), %al
	xorl	%r13d, %r13d
	movb	%al, 22(%rsp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	.LC0(%rip), %rax
	movsd	%xmm1, (%rsp)
	movl	%r13d, %ebp
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	comisd	%xmm0, %xmm2
	jbe	.L31
	testq	%r15, %r15
	je	.L37
	cmpb	$0, 22(%rsp)
	jne	.L25
	xorl	%ebx, %ebx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L38:
	movq	.LC0(%rip), %rax
	movsd	%xmm1, 8(%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movq	.LC0(%rip), %rax
	movsd	8(%rsp), %xmm1
	movsd	%xmm0, (%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movq	(%r15,%r13,8), %rax
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r14d, %xmm0
	mulsd	(%rsp), %xmm0
	movzbl	(%rax,%rbx), %ecx
	cvttsd2sil	%xmm0, %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rsp), %xmm0
	addl	%ebp, %edx
	mulsd	%xmm2, %xmm0
	movslq	%edx, %rdx
	movq	(%r12,%rdx,8), %rdx
	cvttsd2sil	%xmm0, %eax
	addl	%ebx, %eax
	addq	$1, %rbx
	cltq
	movb	%cl, (%rdx,%rax)
.L16:
	movq	.LC0(%rip), %rax
	movsd	%xmm1, (%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	comisd	%xmm0, %xmm2
	ja	.L38
	addq	$1, %r13
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L25:
	xorl	%ebx, %ebx
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L39:
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	pow@PLT
	movq	.LC0(%rip), %rax
	movsd	(%rsp), %xmm1
	movsd	%xmm0, 8(%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	8(%rsp), %xmm2
	movsd	(%rsp), %xmm1
	cvttsd2sil	%xmm0, %eax
	cvttsd2sil	%xmm2, %edx
	addl	%ebx, %eax
	addl	$1, %ebx
	addl	%ebp, %edx
	cltq
	movslq	%edx, %rdx
	movq	(%r12,%rdx,8), %rdx
	movb	$46, (%rdx,%rax)
.L14:
	movq	.LC0(%rip), %rax
	movsd	%xmm1, (%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	comisd	%xmm0, %xmm2
	ja	.L39
	addq	$1, %r13
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L37:
	xorl	%ebx, %ebx
	cmpb	$0, 22(%rsp)
	jne	.L10
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L40:
	movq	.LC0(%rip), %rax
	movsd	%xmm1, 8(%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movq	.LC0(%rip), %rax
	movsd	8(%rsp), %xmm1
	movsd	%xmm0, (%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r14d, %xmm0
	mulsd	(%rsp), %xmm0
	cvttsd2sil	%xmm0, %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rsp), %xmm0
	addl	%ebp, %edx
	mulsd	%xmm2, %xmm0
	movslq	%edx, %rdx
	movq	(%r12,%rdx,8), %rdx
	cvttsd2sil	%xmm0, %eax
	addl	%ebx, %eax
	addl	$1, %ebx
	cltq
	movb	$35, (%rdx,%rax)
.L13:
	movq	.LC0(%rip), %rax
	movsd	%xmm1, (%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	comisd	%xmm0, %xmm2
	ja	.L40
	addq	$1, %r13
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L6:
	movq	.LC0(%rip), %rax
	movsd	%xmm1, (%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movq	.LC0(%rip), %rax
	movsd	(%rsp), %xmm1
	movsd	%xmm0, 8(%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	8(%rsp), %xmm2
	movsd	(%rsp), %xmm1
	cvttsd2sil	%xmm0, %eax
	cvttsd2sil	%xmm2, %edx
	addl	%ebx, %eax
	addl	$1, %ebx
	addl	%ebp, %edx
	cltq
	movslq	%edx, %rdx
	movq	(%r12,%rdx,8), %rdx
	movb	$46, (%rdx,%rax)
.L10:
	movq	.LC0(%rip), %rax
	movsd	%xmm1, (%rsp)
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	comisd	%xmm0, %xmm2
	ja	.L6
	addq	$1, %r13
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L31:
	addl	$1, %r14d
	cmpl	$3, %r14d
	jne	.L21
	addl	$1, 16(%rsp)
	movl	16(%rsp), %eax
	cmpl	$3, %eax
	jne	.L3
	movl	24(%rsp), %eax
	movl	28(%rsp), %esi
	cmpl	%esi, %eax
	je	.L32
	addl	$1, %eax
	movq	%r12, %r15
	movl	%eax, 24(%rsp)
	jmp	.L23
.L32:
	addq	$40, %rsp
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
	je	.L50
.L41:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L51
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
.L50:
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
.L43:
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
	jbe	.L41
	xorl	%ebx, %ebx
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L44:
	movq	0(%rbp), %rax
	movsbl	(%rax,%rbx), %edi
	addq	$1, %rbx
	call	putchar@PLT
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rsp), %xmm1
.L45:
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	comisd	%xmm0, %xmm1
	ja	.L44
	movq	%r14, %rdi
	addl	$1, %r12d
	addq	$8, %rbp
	call	puts@PLT
	jmp	.L43
.L51:
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
