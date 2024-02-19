# 01 配置开发环境

|本期版本|上期版本 
|:---:|:---:
`Mon Feb 19 11:40:15 CST 2024` | -


```bash
sudo apt-get install qemu-utils 

# qemu-img --help
qemu-img convert -O vmdk master.img master.vmdk
qemu-img convert -O vdi master.img master.vdi
```

## Ref

* [一个8位二进制CPU的设计和实现_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1aP4y1s7Vf/)