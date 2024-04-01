CFLAGS:= -m32 \
				 -fno-asynchronous-unwind-tables \
				 -fno-pic \
				 -mpreferred-stack-boundary=2 \
				 -O0

.PHONY: variable.s
variable.s: variable.c
	gcc $(CFLAGS) -S $< -o $@

.PHONY: v2.s
v2.s: v2.c
	gcc $(CFLAGS) -S $< -o $@