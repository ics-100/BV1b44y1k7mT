# 22 ELF 文件格式简介

|本期版本|上期版本
|:---:|:---:
`Tue Mar 26 19:29:20 CST 2024` |

----

c语言 ---> 汇编

- 代码 .txt
- 数据
	- .data / 已经初始化的数据
	- .bss / 未初始化的数据 - buffer 缓存区

```bash
readelf -e elf.o
```

```
objdump -d a.out
```

PIE - Position Independent Executable : 位置无关的可执行程序

---

Intel / AT&T

gas GNU AT&T

```bash
objdump -d elf.o -M intel
```

```
gcc -m32 elf.o -static -nostartfiles
gcc -m32 elf.o -static -nostartfiles -e main
```