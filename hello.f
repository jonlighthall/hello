      program hello
      print *, "hello world"
      print *, "fortan"
      do 10 i=0,2,1 !print beeps at end of program
         print *, " beep!", char(7)
         call sleep(1)
 10   continue
      end
