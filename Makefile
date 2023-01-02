%.bin: %.asm
	nasm $< -o $@

master.img: main.bin
	yes | bximage -func=create -hd=16M -q master.img
	dd if=main.bin of=master.img bs=512 count=1 conv=notrunc

.PHONY:bochs
bochs: master.img
	bochs -q -unlock

.PHONY:clean
clean:
	rm -rf *.bin
	rm -rf bx_enh_dbg.ini
	rm -rf master.img
	rm -rf master.img.lock