#include <stdio.h>

int main()
{
  asm("movl $1, %eax\n movl $0, %ebx\n int $0x80");
}