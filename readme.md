two hello world programs

check out the folder with the following command

  svn co https://github.com/jonlighthall/hello.git/trunk/test ./hello

compile and create executables with the following commands

  g++ -o c.exe hello.c

  gfortran -o f.exe hello.f

these commands can be executed by using the make command

the compiled executables can be run using the following commands
  
  ./c.exe
  
  ./f.exe