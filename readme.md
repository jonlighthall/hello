# Hello World
This repsoitory contains four "hello world" programs.

## Function
Each program exhibits the following functionality.
1. Print `hello world`
1. Print program/scripting language name
1. Execute a FOR loop with 3 iterations
   1. Print the word `beep!`
   2. Print the system default beep 
   3. Add a sleep timer so that each default beep can play in its entirety 

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
