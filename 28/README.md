# 28  gcc 内联汇编

|本期版本|上期版本
|:---:|:---:
`Mon Apr  1 19:38:59 CST 2024` |

```
默认规则
%: %.c
```

```
CC:=gcc
```

```
asm volatile(

)
```

## 扩展内联汇编

```cpp
asm("assembly code" : output : input : changed registers)
```