# 10 内中断和异常


|本期版本|上期版本 
|:---:|:---:
`Fri Mar 22 13:48:54 CST 2024` |

函数调用

```
;push ip
call

; pop ip
ret
```

```
; push cs
; push ip
call far / callf

; pop ip
; pop cs
retf
```
### 内中断

> `0x000` - `0x3ff`  / `1KB` 中断向量表

**单个中断**

* 4B
* 16位偏移地址: 16位段地址


**重要中断**

* `0` : 除法异常
* `0x80` Linux 系统调用

```
; push eflags
; push cs
; push ip

int
```

```
; pop ip
; pop cs
; pop eflags

; interrupt return
iret
```

## Ref

* [Makefile中的wildcard用法](https://blog.csdn.net/liangkaiming/article/details/6267357)