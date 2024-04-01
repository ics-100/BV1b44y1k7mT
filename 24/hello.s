	.file	"hello.c"
	.text
	.section	.rodata
.LC0:
	.string	"hello world!!!"
	.text
	.globl	main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	$.LC0
	call	puts
	addl	$4, %esp
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
