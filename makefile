<<<<<<< HEAD
# makefile for the GNU Compiler Collection

# compilers
your_CC = gcc
your_FC = gfortran

# compiler flags
output_flags = -o $@ 
ccflags = -std=c17
fcflags = -std=f2018 -fimplicit-none
fwarning_flags = -Wall -Wsurprising -W -pedantic -Warray-temporaries	\
-Wcharacter-truncation -Wconversion-extra -Wimplicit-interface		\
-Wimplicit-procedure -Winteger-division -Wintrinsics-std		\
-Wreal-q-constant -Wuse-without-only -Wrealloc-lhs-all
cwarning_flags = -Wall -W -pedantic

=======
# makefile for PGI

# compilers
your_CC = pgcc
your_FC = pgfortran

# compiler flags
output_flags = -o $@ 
ccflags = 
fcflags = 
warning_flags = 
>>>>>>> 2b2867668869afb8408043162da19f340886786d
all: c.exe f.exe

c.exe: hello.c makefile
	@echo compiling C++...
<<<<<<< HEAD
	$(your_CC) $(ccflags) $(cwarning_flags) $< $(output_flags)

f.exe: hello.f makefile
	@echo compiling fortan...
	$(your_FC) $(fcflags) $(fwarning_flags) $< $(output_flags) -fall-intrinsics

clean:
	@echo removing files...
	@rm -fv *.o | sed 's/^/  /'
	@rm -fv *.exe | sed 's/^/  /'
	@rm -fv a.out | sed 's/^/  /'
=======
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
>>>>>>> 2b2867668869afb8408043162da19f340886786d

run: c.exe f.exe
	@echo
	./c.exe
	@echo
	./f.exe
	@echo
	python hello.py
	@echo
	bash hello.sh
	@echo
	@if command -v matlab 1> /dev/null; then matlab -nodesktop -batch "hello_world"; else echo "matlab not found"; fi
