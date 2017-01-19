#include <stdio.h>
#include <unistd.h> //for using the function sleep

int main()
{
  printf("hello world\n");
  printf("C++\n");
  printf(" beep!\a\n");
  sleep(1);
  printf(" beep!\a\n");
  sleep(1);
  printf(" beep!\a\n");
  return 0;
}
