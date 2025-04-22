# 22 ELF 文件格式简介

|本期版本|上期版本
|:---:|:---:
`Tue Apr 22 08:54:05 CST 2025` | `Fri Mar 29 19:35:55 CST 2024`

>  Executable and Linking Format / 可执行和链接的格式

类型 | 备注 | linux | windows
---|---|---|---|
可执行程序 | python / bash /gcc | - | PE(`.exe`)
可重定位文件 / 静态库 | `gcc -c` <br /> `ar` | `.o`<br />`.a` | `.lib`
共享的目标文件 / 动态链接库 | - | `.so` | `.dll`



----

c语言 ---> 汇编

段  | 类别 | 备注
---| ---| ---
`.txt` | 代码段
`.data` | 数据段 | 已经初始化的数据
`.bss` | 数据段  | 未初始化的数据  - buffer 缓冲区


```bash
nasm -f elf32 elf.asm -o elf.o
readelf -e elf.o
```

> 生成可执行文件

```bash
# 可能是跟交叉编译有关
apt-get install gcc-multilib
gcc -m32 elf.o
```

PIE - Position Independent Executable: 位置无关的可执行程序

> 可以把代码加载到任何位置去执行

```bash
; 静态链接
gcc -m32 elf.o -static
```

```bash
objdump -d a.out
```

---

Intel / AT&T

gas GNU AT&T

```bash
objdump --help
objdump -d elf.o			# AT&T
objdump -d elf.o -M intel	# Intel
```

```
gcc -m32 elf.o -static -nostartfiles
gcc -m32 elf.o -static -nostartfiles -e main
```