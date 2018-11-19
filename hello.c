#include <stdio.h> //required for printf
#include <windows.h> //required for Sleep

int main()
{
  printf("hello world\n");
  printf("C++\n");
  for(int i=0;i<3;i++) {//print beeps at end of program
    printf(" beep!\a\n");
    Sleep(1000)
  }
  return 0;
}
