# 30 链接和加载

|本期版本|上期版本
|:---:|:---:
`Mon Apr  1 20:25:46 CST 2024` |

```
# 预处理
gcc -E
```

## 编译

## 汇编

* 生成二进制文件

## 链接

* 生成可执行文件

```
ld -m elf_i386 - static compile.o -o compile -e main
```

## gcc 集成环境

```
  gcc compile.cc -o comile.out --verbose
```


```
ENTRYPOINT:=0x11000

ld -Ttext $(ENTRYPOINT)
```