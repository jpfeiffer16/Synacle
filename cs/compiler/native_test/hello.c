#include <stdio.h>

int main() {
  char test[] = "Hello, world!\n";
  for (int i = 0; i < sizeof(test); i++) {
    putchar(*(test + i));
  }
  // putchar(*test);
  // printf("%x", test);
  return 0;
}