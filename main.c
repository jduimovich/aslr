
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Print addresses of various extern functions in .so libs

extern void slib1();
extern void slib2();

#ifndef MODE
#define MODE "PASS_ON_CLI"
#endif

int main(int argc, char *argv[])
{
  printf("%s, main address = %p\n", MODE, main);
  char onstack[5] = "1234";
  {
    char *str = (char *)malloc(15);
    printf("%s, Heap address = %p\n", MODE, str);
    free(str);
  }
  printf("%s, Stack address = %p\n", MODE, onstack);
  printf("%s, slib1 %p\n", MODE, slib1);
  printf("%s, slib2 %p\n", MODE, slib2);
  return 0;
}