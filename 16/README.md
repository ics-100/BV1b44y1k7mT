# 16 内核加载器

|本期版本|上期版本
|:---:|:---:
`Tue Mar 26 15:58:07 CST 2024` |

主引导扇区只有512 字节

- 446 可用
- 64 硬盘分区表
- 2 0x55aa

* `.readw`:  本地化标签
* `pusha` / `pushad`
* `popa` / `popad`

## Ref

* [PUSHA/PUSHAD POPA/POPAD 指令详解](https://blog.csdn.net/longintchar/article/details/50866801)