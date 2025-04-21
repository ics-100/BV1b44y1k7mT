# 16 内核加载器

|本期版本|上期版本
|:---:|:---:
`Mon Apr 21 14:35:46 CST 2025` | `Tue Mar 26 15:58:07 CST 2024`

主引导扇区只有512 字节

- 446 可用
- 64 硬盘分区表
- 2 0x55aa

* `.readw`:  本地化标签
* `pusha` / `pushad`
* `popa` / `popad`


```
dd if=loader.bin of=master.img bs = 512 count=4 seek=2 conv=notrunc
``` 

## Ref

* [PUSHA/PUSHAD POPA/POPAD 指令详解](https://blog.csdn.net/longintchar/article/details/50866801)