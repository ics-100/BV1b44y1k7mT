	.file	"variable.c"
	.text

	
	.globl	a ; 需要导出
	.bss			; 未初始化的内存
	.align 4
	.type	a, @object			；表示是一个变量或者符号
	.size	a, 4
a:
	.zero	4		; 大小

	; 初始化和不不初始化是一样的
	.globl	b
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.zero	4



	.globl	c
	.data					; 数据段
	.align 4
	.type	c, @object
	.size	c, 4
c:
	.long	5
	.align 4
	.type	d, @object
	.size	d, 4


	; 没有被导出，外部函数就无法访问了
d:
	.long	8



	； const 选择了 ro这个段
	.section	.rodata
	.align 4
	.type	e, @object
	.size	e, 4
e:
	.long	10
	.globl	array
	.bss
	.align 4
	.type	array, @object
	.size	array, 20
array:
	.zero	20
	.globl	iarray
	.data
	.align 4
	.type	iarray, @object
	.size	iarray, 20
iarray:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.globl	message
	.align 4
	.type	message, @object
	.size	message, 13
message:
	.string	"hello world\n"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
