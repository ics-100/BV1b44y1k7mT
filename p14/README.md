
## 可屏蔽中断

* 8259
* 主芯片 / 从芯片 / 级联

## 中断向量表


向量 | 功能
---|---
8 | 时钟


端口 | 说明 | 标记
---|---|---
0x20 | 主 PIC 命令端口 | PIC_M_CMD
0x21 | 主 PIC 数据端口 | PIC_M_DATA
0xA0 | 从 PIC 命令端口 | PIC_S_CMD
0xA1 | 从 PIC 数据端口 | PIC_S_DATA

**寄存器**

* ICW1 ~ ICW4 用于初始化
* OCW1 ~ OCW3 用于操作
* 向 OCW1 写入屏蔽字，打开时钟中断
* sti 设置 cpu 允许外中断
*  向 ocw2 写入 0x20 ，表示中断处理完毕

## Ref

* [https://wiki.osdev.org/8259_PIC](https://wiki.osdev.org/8259_PIC)