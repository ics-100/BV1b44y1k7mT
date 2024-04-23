	.file	"v2.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp				# 保存栈顶指针


	subl	$8, %esp					# 在栈中预留8个字节
	movl	$0, -8(%ebp)			# int a = 0;
	movl	$5, -4(%ebp)			# int b = 5
	movl	$0, %eax					# return 0 返回值在eax中

	leave									# 恢复栈顶指针
	ret										# 函数返回
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
