
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Print addresses of various extern functions in .so libs

extern void slib1();
extern void slib2();

int main(int argc, char *argv[])
{ 

  char onstack[5] = "1234";
  {
    char *str = (char *)malloc(15);
    printf("Heap address = %p\n", str);
    free(str);
  }

  printf("Stack address = %p\n", onstack);

  printf("external shared library slib1 %p\n", slib1);
  printf("external shared library slib2 %p\n", slib2); 

  return 0;
}