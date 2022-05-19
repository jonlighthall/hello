all: c.exe f.exe

ccflags = -static -std=c99
c.exe: hello.c makefile
	@echo compiling C++...
	x86_64-w64-mingw32-gcc $(ccflags) $< -o $@

fcflags = -static
f.exe: hello.f makefile
	@echo compiling fortan...
	x86_64-w64-mingw32-gfortran $(fcflags) $< -o $@

clean:
	@echo removing files...
	rm -fv *.o
	rm -fv *.exe
	rm -fv a.out

run: c.exe f.exe
	./c.exe
	@echo
	./f.exe
	@echo
	python hello.py
	@echo
	bash hello.sh
