#include <stdio.h> //required for printf
#include <unistd.h> //required for sleep

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
