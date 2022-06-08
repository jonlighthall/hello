# makefile for PGI

# compilers
your_CC = pgcc
your_FC = pgfortran

# compiler flags
output_flags = -o $@ 
ccflags = 
fcflags = 
warning_flags = 
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
	@rm -fv *.obj
	@rm -fv *.exe
	@rm -fv a.out
	@rm -fv *.dwf
	@rm -fv *.pdb

run: c.exe f.exe
	./c.exe
	@echo
	./f.exe
	@echo
	python hello.py
	@echo
	bash hello.sh
