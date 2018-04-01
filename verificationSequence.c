/*
 * Credit: https://rosettacode.org/wiki/Ackermann_function#C
*/

#include <stdio.h>
 
int ackermann(int m, int n)
{
  if (!m) return n + 1;
  if (!n) return ackermann(m - 1, 1);
  return ackermann(m - 1, ackermann(m, n - 1));
}
 
int main()
{
  printf("%d", ackermann(4, 1));
}