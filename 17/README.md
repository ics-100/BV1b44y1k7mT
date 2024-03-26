# 17 32 位架构

|本期版本|上期版本
|:---:|:---:
`Tue Mar 26 17:06:46 CST 2024` |


```bash
gcc -m32 -S hello.c -o hello.s
```



```bash
nasm -f elf32 hello.asm

gcc -m32 hello.o -o hello
gcc -m32 hello.o -o hello -static
```