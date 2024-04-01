	.file	"v2.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp				# 保存栈顶指针


	subl	$8, %esp					# 在栈中预留8个字节
	movl	$0, -8(%ebp)			
	movl	$5, -4(%ebp)
	movl	$0, %eax

	leave									# 恢复栈顶指针
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
