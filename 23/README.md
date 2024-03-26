# 23 AT&T 语法格式

|本期版本|上期版本
|:---:|:---:
`Tue Mar 26 20:11:20 CST 2024` |

## 立即数

* 前面要加 `$`

## 寄存器

* 寄存器前要加 `%`

## 数据传送指令

  movx source, destination

数据的传送方向是从左向右 

```bash
movl %eax, %ebx
mov ebx, eax
```

|movx|描述|Intel|
|---|---|---|
|movl | 32位 | mov dword|
|movw | 16位 | mov word|
|movb | 8位 | mov byte|

## 数据类型

| 命令      | 数据类型                | nasm   |
| --------- | ----------------------- | ------ |
| `.ascii`  | 字符串                  | `db`   |
| `.asciz` | 以 `\0` 结尾的字符串    | `db 0` |
| `.byte`   | 字节                    | `db`   |
| `.double` | 双精度浮点              | `dq`   |
| `.float`  | 单精度浮点              | `dd`   |
| `.int`    | 32位整数                | `dd`   |
| `.long`   | 32位整数和(`.int` 相同) | `dd`   |
| `.octa`   | 16字节整数              |        |
| `.quad`   | 8字节整数               | `dq`   |
| `.short`  | 16位整数                | `dw`   |
| `.single` | 单精度浮点              | `dd`   |

BSS Block Started Symbol; `resb`

| 命令     | 描述                              |
| -------- | --------------------------------- |
| `.comm`  | 通用缓存区域                      |
| `.lcomm` | 本地缓存区域 (只本文件可用的区域) |


```bash
as -32 att.s -o att.o
```