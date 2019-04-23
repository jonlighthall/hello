# Hello World
This repsoitory contains four "hello world" programs.
In addition to the usual printing of "hello world," these programs also include a FOR loop used to "print" the system default beep.

## Installation

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

The script files do not need to be compiled.

## Executing
The compiled executables can be run using the following commands.
  
`./c.exe`
  
`./f.exe`

The phython script is executed with either one of the following commands.
`./hello.py`
`python hello.py`

The bash script is executed with either one of the following commands.
`./hello.sh`
`bash hello.sh`
