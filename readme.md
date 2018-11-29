# Hello World
This repsoitory contains three "hello world" programs.

## Installation
check out the folder from the repository with the following command

### Prerequisites

Requies GNU Compilers for C++ and Fortran.

`sudo apt install gfortran`

`sudo apt install g++`

### Cloning

Check out the folder from the repository with one of the following commands.

`svn co https://github.com/jonlighthall/hello.git/trunk/ ./hello` (SVN)

`git clone https://github.com/jonlighthall/hello` (Git HTTPS)

`git clone git@github.com:jonlighthall/hello.git` (Git SSH)

## Compiling
Compile the source files and create executables with the following commands.

`g++ -o c.exe hello.c` (C++)

`gfortran -o f.exe hello.f` (Fortran)

Alternatively, these commands can be executed by using the `make` command.

## Executing
The compiled executables can be run using the following commands.
  
`./c.exe`
  
  ./f.exe
```
the phython script does not need to be compiled and is executed with one of the following commands
  
```
  ./hello.py
  python hello.py
```
