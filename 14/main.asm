[org 0x7c00]

; 定义端口号
PIC_M_CMD equ 0x20
PIC_M_DATA equ 0x21

mov ax, 3
int 0x10

mov ax, 0
mov ds, ax
mov ss, ax
mov sp, 0x7c00


xchg bx, bx

; 注册中断处理函数
mov word [8 * 4], clock
mov word [8 * 4 + 2], 0

mov al, 0b1111_1110
out PIC_M_DATA, al

sti

loopa:
  mov bx, 3   ; 存放位置
  mov al, 'A' ; 存放的字符
  call blink
  jmp loopa

clock:
  ;xchg bx, bx
  push bx
  push ax
  mov bx, 4   ; 存放位置
  mov al, 'C' ; 存放的字符
  call blink

  mov al, 0x20
  out PIC_M_CMD, al

  pop ax
  pop bx
  iret

blink:
  push es
  push dx

  mov dx, 0xb800
  mov es, dx

  shl bx, 1   ; 一个字符需要两个位置
  mov dl, [es: bx]
  cmp dl, ' '
  jnz .set_space
    mov [es:bx], al
    jmp .done
  .set_space:
    mov byte [es:bx], ' '
  .done:
    shr bx, 1

    pop es
    pop dx
    ret

  times 510-($-$$) db 0
  db 0x55, 0xaa