# 14 外中断和时钟

|本期版本|上期版本
|:---:|:---:
`Thu Jan 12 02:04:16 CST 2023` |

---

> [131 启用更新周期结束中断](https://study.163.com/course/courseLearn.htm?courseId=1209670804#/learn/video?lessonId=1280833423&courseId=1209670804)

<img src="./01.png" />




## 中断向量表

向量 | 功能
---|---
8 | 时钟

## 8259


端口 | 说明 | 标记
---|---|---
0x20 | 主 PIC 命令端口 | PIC\_M\_CMD
0x21 | 主 PIC 数据端口 | PIC\_M\_DATA
0xA0 | 从 PIC 命令端口 | PIC\_S\_CMD
0xA1 | 从 PIC 数据端口 | PIC\_S\_DATA

**寄存器**

寄存器|端口|备注
---|---|---
`OCW1` | 写入主片的 `0x21` 或从片的 `0xA1` 端口 | 用来屏蔽连接在 8259A 上的外部设备的中断信号
`OCW2` | 写入主片的 `0x20` 及从片的 `0xA0` 端口 | 用来设置中断结束方式和优先级模式

**流程**

* 向 `OCW1` 写入屏蔽字，打开时钟中断
* `sti` 设置 cpu 允许外中断
*  向 `OCW2` 写入 `0x20` ，表示中断处理完毕

## Ref

* <https://wiki.osdev.org/8259_PIC>
* <https://pdos.csail.mit.edu/6.828/2005/readings/hardware/8259A.pdf>
* [操作系统真象还原 学习笔记08--中断](https://www.kn0sky.com/?p=47)
