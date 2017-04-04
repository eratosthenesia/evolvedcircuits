#include<stdio.h>

int main(void) {
  FILE* f = fopen("abc.d", "r");
  fclose(f);
  return 0;
}
