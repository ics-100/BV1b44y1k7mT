; 标记为32位代码
[bits 32]


; 标记为外部函数
extern printf
extern exit

section .text       ; 代码段
; 导出这个符号
global main
main:
	
	push message
	call printf
	pop eax
	
	push 0
	call exit
	
.section .data        ; 数据段
	message db "hello world", 10, 13, 0
	message_end