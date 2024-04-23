## Makefile

* `.PHONY`: 假目标
* `%` 通配符
* `$<`: 输入 / `$@`: 输出



## Command

```
bximage -func=create -hd=16M -q master.img

dd if=main.bin of=master.img bs=512 count=1 conv=notrunc

bochs -q -unlock
```

### Gcc

选项｜解释|备注
---|---|---
`-m32` | 编译为32位应用程序
`-static` | 静态编译
`-nostartfiles` | 没有启动文件
`-e main` | 指定入口函数
`-fno-asynchronous-unwind-tables` | 调用栈信息
`-fno-pic` | 去掉位置无关的代码
`-mpreferred-stack-boundary=2` | 栈对齐
`-masm=intel` | 使用Intel 汇编语法
`-O0` | 不要优化
`-fno-stack-protector` | 不要栈保护