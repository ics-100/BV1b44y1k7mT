[org 0x7c00]

mov ax, 3
int 0x10

xchg bx, bx

mov ax, 0
mov ds, ax
mov ss, ax
mov sp , 0x7c00

mov word [0x80 * 4], print
mov word [0x80 * 4 + 2], 0

int 0x80

hlt

print:

  push ax
  push bx
  push es

  mov ax, 0xb800
  mov es, ax
  mov bx, [video]
  mov byte [es:bx], '.'
  add word [video], 2

  pop es
  pop bx
  pop ax
  
  iret

video:
  dw 0x00