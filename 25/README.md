# 25  C 变量和函数参数

|本期版本|上期版本
|:---:|:---:
`Tue Mar 26 20:31:24 CST 2024` |

## 全局变量


```
CFLAGS:= -m32 \
				 -fno-asynchronous-unwind-tables \
				 -fno-pic \
				 -mpreferred-stack-boundary=2 \
				 -O0

```

```
readelf -x .data variable.0
```


## 局部变量

* 生命周期 - 两个大括号之间
* 局部变量存储在栈中
