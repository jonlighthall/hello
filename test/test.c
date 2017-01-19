#include <stdio.h> //required for printf
#include <unistd.h> //required for sleep

int main()
{
  printf("hello world\n");
  printf("C++\n");
  for(int i=0;i<3;i++) {//print beeps at end of program
    printf(" beep!\a\n");
    sleep(1);
  }
  return 0;
}
