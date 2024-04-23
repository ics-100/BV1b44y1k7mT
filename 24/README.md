# 24  gcc 汇编分析

|本期版本|上期版本
|:---:|:---:
`Tue Apr 23 09:17:00 CST 2024` | `Mon Apr  1 12:32:30 CST 2024`

```
gcc -S hello.c
# 生成32位汇编
gcc -m32 -S hello.c
```

## CFI

> 伪指令

* Call Frame Information 调用栈桢信息
* `.cfi_`用于调试的信息，可以在调用失败的时候回溯栈
* `-fno-asynchronous-unwind-tables`


## PIC

* Position Independent Code / 位置无关的代码 
* `printf` / `puts`
* `-fno-pic`

**动态链接**

```
  mov eax, eip;
```
上面这条指令是无效的。调用了 `__x86.get_pc_thunk.ax` 函数来获取  `eip` 的值


## 栈对齐

```
;-16 = 0 - 16 = 0x000000 - 0x10 = 0xfffff0
andl $-16, %esp
```

* 将栈对齐到 16 位
* `-mpreferred-stack-boundary=2`

## Intel

* `-masm=intel`


```s
; leave

mov esp, ebp
pop ebp
```

## Ref

* [C语言指针及数组的运行原理](https://blog.csdn.net/zhangHP_123/article/details/130243710)
* [C语言两个方法之间值传参 在汇编层面的体现](https://zhuanlan.zhihu.com/p/515824078)

**misc**

* [Go语言调试器开发](https://www.hitzhangjie.pro/debugger101.io/)
* [如何生成干净可阅读的汇编代码](https://tinylab.org/generate-clean-assembly/)