#include<stdio.h>
#include<stdlib.h>
int main(int argc, char** argv) {
  int* x = (int*)malloc(123*sizeof(int));
  int i;
  printf("%x\n", (size_t)x);
  for(i=0;i<123;++i) {
    x[i]=i*i+42;
  }
  for(i=3;i<123;i+=7) {
    printf("x[%d] = %d\n", i, x[i]);
  }
  free(x);
  return 0;
}