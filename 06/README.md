# 06 寻址方式

|本期版本|上期版本 
|:---:|:---:
`Mon Apr 22 22:50:17 CST 2024` | `Fri Mar 22 12:46:04 CST 2024`

```asm
offset equ 0x0000
data equ 0x55aa

mov ax 0x1000		; 立即数寻址 B8 00 10
mov ds, ax			; 寄存器寻址 8E D8

mov ax, [offset]		; 立即寻址

mov ax, [bx] 		; 间接寻址bx(ds) bp(ss) si di

; 变址寻址

mov ax, [si]

; 基址+变址
mov ax, [bx + si + 0x100]
```