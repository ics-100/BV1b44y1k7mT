# 24  gcc 汇编分析

|本期版本|上期版本
|:---:|:---:
`Tue Mar 26 20:31:24 CST 2024` |

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

## 栈对其

* `-mpreferred-stack-boundary=2`

## Intel

* `-masm=intel`


```
leave
mov esp, ebp
pop ebp
```

## Ref

* [C语言指针及数组的运行原理](https://blog.csdn.net/zhangHP_123/article/details/130243710)
* [C语言两个方法之间值传参 在汇编层面的体现](https://zhuanlan.zhihu.com/p/515824078)