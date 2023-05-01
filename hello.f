      program hello
      implicit none
      integer i
      write(*,'(a)') "hello world"
      write(*,'(a)') "fortan"
<<<<<<< HEAD
      do i=1,3,1             !print beeps at end of program
=======
      do 10 i=1,3,1             !print beeps at end of program
>>>>>>> 2b2867668869afb8408043162da19f340886786d
         if(i.eq.1) then
            write(*,'(i2,2(a))')i," beep", char(7)
         else
            write(*,'(i2,2(a))')i," beeps", char(7)
         endif
         call sleep(1)
<<<<<<< HEAD
      enddo
=======
 10   continue
>>>>>>> 2b2867668869afb8408043162da19f340886786d
      end 
