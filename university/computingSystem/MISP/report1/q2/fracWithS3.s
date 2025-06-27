	.file	"frac.c"
	.text
	.globl	createPattern
	.type	createPattern, @function
createPattern:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-72(%rbp), %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L2
.L3:
	movl	-36(%rbp), %eax
	cltq
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	addl	$1, -56(%rbp)
.L2:
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L3
	movl	$0, -52(%rbp)
	jmp	.L4
.L14:
	movl	$0, -48(%rbp)
	jmp	.L5
.L13:
	movl	$0, -44(%rbp)
	jmp	.L6
.L12:
	movl	$0, -40(%rbp)
	jmp	.L7
.L11:
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-48(%rbp), %xmm2
	movsd	%xmm2, -88(%rbp)
	movl	-72(%rbp), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	mulsd	-88(%rbp), %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -32(%rbp)
	pxor	%xmm3, %xmm3
	cvtsi2sdl	-52(%rbp), %xmm3
	movsd	%xmm3, -88(%rbp)
	movl	-72(%rbp), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	mulsd	-88(%rbp), %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -28(%rbp)
	cmpl	$1, -48(%rbp)
	jne	.L8
	cmpl	$1, -52(%rbp)
	jne	.L8
	movl	-44(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-40(%rbp), %ecx
	movl	-28(%rbp), %eax
	addl	%ecx, %eax
	cltq
	addq	%rdx, %rax
	movb	$46, (%rax)
	jmp	.L9
.L8:
	cmpq	$0, -80(%rbp)
	jne	.L10
	movl	-44(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-40(%rbp), %ecx
	movl	-28(%rbp), %eax
	addl	%ecx, %eax
	cltq
	addq	%rdx, %rax
	movb	$35, (%rax)
	jmp	.L9
.L10:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-44(%rbp), %ecx
	movl	-32(%rbp), %edx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-40(%rbp), %esi
	movl	-28(%rbp), %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L9:
	addl	$1, -40(%rbp)
.L7:
	pxor	%xmm4, %xmm4
	cvtsi2sdl	-40(%rbp), %xmm4
	movsd	%xmm4, -88(%rbp)
	movl	-72(%rbp), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm5
	comisd	-88(%rbp), %xmm5
	ja	.L11
	addl	$1, -44(%rbp)
.L6:
	pxor	%xmm6, %xmm6
	cvtsi2sdl	-44(%rbp), %xmm6
	movsd	%xmm6, -88(%rbp)
	movl	-72(%rbp), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm7
	comisd	-88(%rbp), %xmm7
	ja	.L12
	addl	$1, -48(%rbp)
.L5:
	cmpl	$2, -48(%rbp)
	jle	.L13
	addl	$1, -52(%rbp)
.L4:
	cmpl	$2, -52(%rbp)
	jle	.L14
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L15
	movq	-24(%rbp), %rax
	jmp	.L16
.L15:
	movl	-72(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	-68(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	createPattern
.L16:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	createPattern, .-createPattern
	.section	.rodata
.LC1:
	.string	"%d"
.LC2:
	.string	"\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L18
	movl	$1, %eax
	jmp	.L24
.L18:
	movl	-32(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	createPattern
	movq	%rax, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L20
.L23:
	movl	$0, -24(%rbp)
	jmp	.L21
.L22:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	addl	$1, -24(%rbp)
.L21:
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-24(%rbp), %xmm2
	movsd	%xmm2, -40(%rbp)
	movl	-32(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm3
	comisd	-40(%rbp), %xmm3
	ja	.L22
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -28(%rbp)
.L20:
	pxor	%xmm4, %xmm4
	cvtsi2sdl	-28(%rbp), %xmm4
	movsd	%xmm4, -40(%rbp)
	movl	-32(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm5
	comisd	-40(%rbp), %xmm5
	ja	.L23
	movl	$0, %eax
.L24:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
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
