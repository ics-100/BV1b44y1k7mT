# 17 32 位架构

|本期版本|上期版本
|:---:|:---:
`Mon Apr 21 14:53:48 CST 2025` | `Tue Mar 26 17:06:46 CST 2024`


```bash
gcc -m32 -S hello.c -o hello.s
```

> 用汇编写一个可以在Linux上运行的程序

```bash
nasm -f elf32 hello.asm

gcc -m32 hello.o -o hello
gcc -m32 hello.o -o hello -static
```