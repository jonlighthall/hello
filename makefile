# makefile for the GNU Compiler Collection

# compilers
your_CC = gcc
your_FC = gfortran

# compiler flags
output_flags = -o $@ 
ccflags = -std=c99
fcflags = -fimplicit-none -fd-lines-as-comments
fwarning_flags = -Wall -Wsurprising -W -pedantic -Warray-temporaries	\
-Wcharacter-truncation -Wconversion-extra -Wimplicit-interface		\
-Wimplicit-procedure -Winteger-division -Wintrinsics-std		\
-Wreal-q-constant -Wuse-without-only -Wrealloc-lhs-all
cwarning_flags = -Wall -W -pedantic

all: c.exe f.exe

c.exe: hello.c makefile
	@echo compiling C++...
	$(your_CC) $(ccflags) $(cwarning_flags) $< $(output_flags)

f.exe: hello.f makefile
	@echo compiling fortan...
	$(your_FC) $(fcflags) $(fwarning_flags) $< $(output_flags)

clean:
	@echo removing files...
	@rm -fv *.o | sed 's/^/  /'
	@rm -fv *.exe | sed 's/^/  /'
	@rm -fv a.out | sed 's/^/  /'

run: c.exe f.exe
	./c.exe
	@echo
	./f.exe
	@echo
	python hello.py
	@echo
	bash hello.sh
	@echo 
	matlab -nodesktop -batch "hello_world"
