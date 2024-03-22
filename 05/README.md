# 05 基础数据类型

|本期版本|上期版本 
|:---:|:---:
`Fri Mar 22 12:27:13 CST 2024` |

## Make

* `%` 通配符
* `$<`: 输入 / `$@`: 输出

## 数据类型

* `db`: define byte
* `dw`: define word
* `dd`: define doubleword

## 起始地址

> 对比二进制文件可以看出差异

```nasm
[org 0x7c00]
```


## Ref

* 会在编译期影响到内存寻址指令的编译（编译器会把所有程序用到的段内偏移地址自动加上后跟的数值），而其自身并不会被编译成机器码。就是为程序中所有的引用地址
* [理解ORG指令](https://blog.51cto.com/rickcheung/268266)
* [计算机自制操作系统（四）：汇编语言烧脑的ORG问题](https://zhuanlan.zhihu.com/p/100757410)