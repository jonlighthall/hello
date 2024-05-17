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

all: c f

c: hello.c makefile
	@echo compiling C++...
	$(your_CC) $(ccflags) $(cwarning_flags) $< $(output_flags)

f: hello.f makefile
	@echo compiling fortan...
	$(your_FC) $(fcflags) $(fwarning_flags) $< $(output_flags) -fall-intrinsics

clean:
	@echo removing files...
	@rm -fv *.o | sed 's/^/  /'
	@rm -fv *.exe | sed 's/^/  /'
	@rm -fv a.out | sed 's/^/  /'

run: c f
	@echo
	./c
	@echo
	./f
	@echo
	python hello.py
	@echo
	bash hello.sh
	@echo
	@if command -v matlab 1> /dev/null; then matlab -nodesktop -batch "hello_world"; else echo "matlab not found"; fi
