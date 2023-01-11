
; 定义端口
PIC_M_CMD equ 0x20
PIC_M_DATA equ 0x21

; 安装中断处理
mov word [8 * 4], clock
mov word [8 * 4 + 2], 0

mov al, 0b1111_1110
out PIC_M_DATA, al

sti  ; IF=1

clock:
    
    ; 中断完成
    mov al, 0x20
    out PIC_M_CMD, al
    iret
