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

* `-m32`
* `-static`
* `-nostartfiles`
* `-e main`