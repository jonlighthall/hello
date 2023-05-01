#include <stdio.h> //required for printf
<<<<<<< HEAD
#include <unistd.h> //required for sleep
=======
//#include <unistd.h> //required for sleep
>>>>>>> 2b2867668869afb8408043162da19f340886786d
int main()
{
  printf("hello world\n");
  printf("C++\n");
  for(int i=1;i<4;i++) {//print beeps at end of program
    printf(" %d beeps\a\n",i);
<<<<<<< HEAD
    sleep(1);
=======
    //sleep(1);
    system("sleep 1");
>>>>>>> 2b2867668869afb8408043162da19f340886786d
  }
  return 0;
}
