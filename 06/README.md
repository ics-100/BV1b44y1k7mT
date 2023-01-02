# 06 寻址方式

|本期版本|上期版本 
|:---:|:---:
`Mon Jan  2 21:30:43 CST 2023` |

```
offset equ 0x0000
data equ 0x55aa

mov ax 0x1000		; 立即数寻址
mov ds, ax			; 寄存器寻址

mov ax, [offset]		; 立即寻址

mov ax, [bx] 		; 间接寻址bx(ds) bp(ss) si di

; 变址寻址

mov ax, [si]

; 基址+变址
mov ax, [bx + si + 0x100]
```