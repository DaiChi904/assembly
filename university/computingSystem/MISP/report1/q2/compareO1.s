	.file	"compare.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
.LC1:
	.string	"num1 is greater than num2"
.LC2:
	.string	"num2 is greater than num1"
.LC3:
	.string	"num1 and num2 are equal"
	.text
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rsi
	leaq	.LC0(%rip), %rbx
	movq	%rbx, %rdi
	call	__isoc99_scanf@PLT
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	(%rsp), %edx
	movl	4(%rsp), %eax
	cmpl	%eax, %edx
	jg	.L7
	jge	.L4
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
.L3:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L8
	movl	$0, %eax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L4:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L8:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	main, .-main
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
