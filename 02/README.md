# 02 hello world

|本期版本|上期版本
|:---:|:---:
`Mon Apr 21 13:14:02 CST 2025` | `Fri Mar 22 12:22:35 CST 2024`


**F2 查看栈卡住**

* `view` - `Stack`
* 2.7 已经修复

**查看物理内存**

* `view` - `Physical MemDump`

**清除屏幕**

```asm
mov ax, 3
int 0x10
```