# 17 32 位架构

|本期版本|上期版本
|:---:|:---:
`Fri Mar 25 00:11:48 CST 2022` |

```c
#include <stdio.h>

int main()
{
	print("hello world!!!!\n")
}
```

```bash
gcc -m32 -S hello.c -o hello.s
```

```nasm
[bits 32]

extern printf
extern exit

section .text
global main
main:
	
	push message
	call printf
	pop eax
	
	push 0
	call exit
	
.section .data
	message db "hello world", 10, 13, 0
	message_end
```

```bash
nasm -f elf32 hello.asm
gcc -m32 hello.o -o hello
```