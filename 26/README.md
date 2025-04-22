# 26 C 循环与分支

|本期版本|上期版本
|:---:|:---:
`Tue Apr 22 14:37:05 CST 2025` | `Mon Apr  1 18:47:25 CST 2024`

## Builtin

> `print` 替换了 `puts`

```bash
-fno-builtin
```

* <https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html>


## while  循环

lea Load Effective Address, 加载有效地址

```cpp
leal -1(%eax), %edx   # edx = eax -1
```