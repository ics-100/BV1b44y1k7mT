[org 0x7c00]


CRT_ADDR_REG equ 0x3D4                      ; 地址端口
CRT_DATA_REG equ 0x3D5                      ; 数据端口

CRT_CURSOR_HIGH equ 0x0E                    ; 光标高8位
CRT_CURSOR_LOW equ 0x0F                     ; 光标低8位

mov ax, 3
int 0x10

; 初始化栈
mov ax, 0
mov ds, ax
mov ss, ax
mov sp, 0x7c00

xchg bx, bx


mov ax, 0xb800
mov es, ax

mov si, message

print:
    call get_cursor
    mov di, ax
    shl di, 1           ; 左移1位，相当于乘以2
                        ; 一个字符占用2个字节

    mov bl, [si]
    cmp bl, 0           ; 判断内容是否已经结束
    jz print_end
    mov [es:di], bl

    inc si              ; 下一个字符
    inc ax
    call set_cursor
    xchg bx, bx
    jmp print

print_end:



hlt
get_cursor:
    ; 获取光标位置，返回值存储在 AX 寄存器中

    push dx

    ; 获取高8位
    mov dx, CRT_ADDR_REG
    mov al, CRT_CURSOR_HIGH
    out dx, al

    mov dx, CRT_DATA_REG
    mov al, bl
    in al, dx
    shl ax, 8               ; 把低8位移动到高8位

    ; 获取低8位
    mov dx, CRT_ADDR_REG
    mov al, CRT_CURSOR_LOW
    out dx, al

    mov dx, CRT_DATA_REG
    mov al, bh
    in al, dx

    pop dx
    ret 

set_cursor:
    ; 设置光标， 参数用ax 传递
    push dx
    push bx

    mov bx ,ax

    ; 写入低8位数据
    mov dx, CRT_ADDR_REG
    mov al, CRT_CURSOR_LOW
    out dx, al

    mov dx, CRT_DATA_REG
    mov al, bl
    out dx, al

    ; 写入高8位数据
    mov dx, CRT_ADDR_REG
    mov al, CRT_CURSOR_HIGH
    out dx, al

    mov dx, CRT_DATA_REG
    mov al, bh
    out dx, al

    pop bx
    pop dx
    ret

message:
    db "Hello, world!!!", 0

times 510-($-$$) db 0
db 0x55, 0xaa

