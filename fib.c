#include<stdio.h>
int x(){
  return 301;
}
int fib(int n) {
  if(n < 2) {
    return 1;
  }
  return fib(n-1)+fib(n-2);
}
int main() {
  printf("%d\n", fib(10));
  return 0;
}
