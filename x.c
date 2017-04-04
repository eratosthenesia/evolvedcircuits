#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>

double f(double a, double b, double c) {
  return a*(b-c)/a+(b-a)*(c-b);
}
int main()
{
  f(2.3,5.3,7.8);
  return 0;
}
