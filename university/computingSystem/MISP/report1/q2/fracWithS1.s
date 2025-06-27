	.file	"frac.c"
	.text
	.globl	createPattern
	.type	createPattern, @function
createPattern:
.LFB39:
	.cfi_startproc
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	%edi, 28(%rsp)
	movl	%esi, 24(%rsp)
	movq	%rdx, %r14
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	movsd	.LC0(%rip), %xmm0
	call	pow@PLT
	cvttsd2sil	%xmm0, %r12d
	movslq	%r12d, %rbp
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	%rax, %r15
	testl	%r12d, %r12d
	jle	.L2
	movq	%rax, %rbx
	leal	-1(%r12), %eax
	leaq	8(%r15,%rax,8), %r12
.L3:
	movq	%rbp, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	addq	$8, %rbx
	cmpq	%r12, %rbx
	jne	.L3
.L2:
	movl	$0, 20(%rsp)
	movl	24(%rsp), %eax
	subl	$1, %eax
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm2, (%rsp)
	jmp	.L4
.L19:
	addl	16(%rsp), %ebx
	movslq	%ebx, %rbx
	addl	12(%rsp), %eax
	cltq
	movq	(%r15,%rbx,8), %rdx
	movb	$46, (%rdx,%rax)
.L6:
	addq	$1, %rbp
.L9:
	movl	%ebp, 12(%rsp)
	movsd	(%rsp), %xmm1
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L18
	movsd	(%rsp), %xmm1
	movsd	.LC0(%rip), %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %ebx
	movsd	(%rsp), %xmm1
	movsd	.LC0(%rip), %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movl	20(%rsp), %esi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	cmpl	$1, %r12d
	jne	.L5
	cmpl	$1, %esi
	je	.L19
.L5:
	testq	%r14, %r14
	je	.L20
	movq	(%r14,%r13,8), %rdx
	movzbl	(%rdx,%rbp), %ecx
	addl	16(%rsp), %ebx
	movslq	%ebx, %rbx
	addl	12(%rsp), %eax
	cltq
	movq	(%r15,%rbx,8), %rdx
	movb	%cl, (%rdx,%rax)
	jmp	.L6
.L20:
	addl	16(%rsp), %ebx
	movslq	%ebx, %rbx
	addl	12(%rsp), %eax
	cltq
	movq	(%r15,%rbx,8), %rdx
	movb	$35, (%rdx,%rax)
	jmp	.L6
.L18:
	addq	$1, %r13
.L11:
	movl	%r13d, 16(%rsp)
	movsd	(%rsp), %xmm1
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L21
	movl	$0, %ebp
	jmp	.L9
.L21:
	addl	$1, %r12d
	cmpl	$3, %r12d
	je	.L10
.L13:
	movl	$0, %r13d
	jmp	.L11
.L10:
	addl	$1, 20(%rsp)
	movl	20(%rsp), %eax
	cmpl	$3, %eax
	je	.L12
.L4:
	movl	$0, %r12d
	jmp	.L13
.L12:
	movl	24(%rsp), %eax
	movl	28(%rsp), %edi
	cmpl	%edi, %eax
	je	.L1
	addl	$1, %eax
	movl	%eax, %esi
	movq	%r15, %rdx
	call	createPattern
	movq	%rax, %r15
.L1:
	movq	%r15, %rax
	addq	$40, %rsp
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	4(%rsp), %rsi
	leaq	.LC1(%rip), %rdi
	call	__isoc99_scanf@PLT
	movl	$1, %r13d
	testl	%eax, %eax
	je	.L31
.L22:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L32
	movl	%r13d, %eax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
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
.L31:
	.cfi_restore_state
	movl	%eax, %r13d
	movl	$0, %edx
	movl	$0, %esi
	movl	4(%rsp), %edi
	call	createPattern
	movq	%rax, %rbp
	movl	%r13d, %r12d
	leaq	.LC2(%rip), %r14
	jmp	.L24
.L25:
	movq	0(%rbp), %rax
	movsbl	(%rax,%rbx), %edi
	call	putchar@PLT
	addq	$1, %rbx
.L26:
	pxor	%xmm1, %xmm1
	cvtsi2sdl	4(%rsp), %xmm1
	movsd	.LC0(%rip), %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	comisd	%xmm0, %xmm1
	ja	.L25
	movq	%r14, %rdi
	call	puts@PLT
	addl	$1, %r12d
	addq	$8, %rbp
.L24:
	pxor	%xmm1, %xmm1
	cvtsi2sdl	4(%rsp), %xmm1
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L22
	movl	$0, %ebx
	jmp	.L26
.L32:
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
