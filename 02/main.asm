mov ax, 3
int 0x10

mov ax, 0xb800
mov ds, ax

mov byte [0], 'H'
mov byte [2], 'e'
mov byte [4], 'l'
mov byte [6], 'l'
mov byte [8], 'o'
mov byte [10], ','
mov byte [12], ' '
mov byte [14], 'w'
mov byte [16], 'o'
mov byte [18], 'r'
mov byte [20], 'l'
mov byte [22], 'd'


hlt

times 510 - ($ - $$) db 0
db 0x55, 0xaa