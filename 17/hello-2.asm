; 标记为32位代码
[bits 32]



section .text       ; 代码段
; 导出这个符号
global main
main:
	
	mov eax, 4 ; write
  mov ebx, 1; stdout
  mov ecx, message; buffer
  mov edx, message_end - message
	int 0x80
	

  mov eax, 1 ; exit
  mov ebx, 0; status
  int 0x80
	
.section .data        ; 数据段
	message db "hello world", 10, 13, 0
	message_end