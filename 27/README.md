## 27 gcc 汇编标记

|本期版本|上期版本
|:---:|:---:
`Mon Apr  1 18:47:25 CST 2024` |

| 标记 | 英文                     | 解释         |
| ---- | ------------------------ | ------------ |
| LC0  | local constant           | 本地常量     |
| LFB0 | local function beginning | 本地函数开始 |
| LFE0 | local function ending    | 本地函数结束 |
| LBB0 | local block beginning    | 本地块开始   |
| LBE0 | local block ending       | 本地块结束   |
| L    | local labels             | 本地标记     |


## 关联汇编信息

```bash
-fverbose-asm
```

## 结构体

```
# 不进行内存地址对齐
__attribute__((packed))
```

**位操作**

```

{
  char c1: 4;
  char c2: 2
}
```

**联合**

## 结构体成员顺序

* 大的放前面