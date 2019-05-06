#include <stdio.h> //required for printf
#include <unistd.h> //required for sleep
int main()
{
  printf("hello world\n");
  printf("C++\n");
  for(int i=1;i<4;i++) {//print beeps at end of program
    printf(" %d beeps\a\n",i);
    sleep(1);
  }
  return 0;
}
