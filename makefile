# compilers
your_CC = icx
your_FC = ifx

# compiler flags
output_flags = -o $@ 
ccflags = -std=c99
warning_flags = -pedantic -Wall -Wsurprising -W -Werror
fcflags = -fimplicit-none -fd-lines-as-comments 

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
