# makefile for MinGW

# compilers
your_CC = x86_64-w64-mingw32-gcc
your_FC = x86_64-w64-mingw32-gfortran -static

# compiler flags
output_flags = -o $@ 
ccflags = -std=c99
fcflags = -fimplicit-none -fd-lines-as-comments 
warning_flags = -pedantic -Wall -Wsurprising -W -Werror

all: c.exe f.exe

c.exe: hello.c makefile
	@echo compiling C++...
	$(your_CC) $(ccflags) $< $(output_flags)

f.exe: hello.f makefile
	@echo compiling fortan...
	$(your_FC) $(fcflags) $(warning_flags) $< $(output_flags)

clean:
	@echo removing files...
	@rm -fv *.o
	@rm -fv *.exe
	@rm -fv a.out

run: c.exe f.exe
	./c.exe
	@echo
	./f.exe
	@echo
	python hello.py
	@echo
	bash hello.sh
