all: c.exe f.exe

c.exe: hello.c
	@echo compiling C++...
	x86_64-w64-mingw32-gcc -static $^ -o $@ -std=c99

f.exe: hello.f
	@echo compiling fortan...
	x86_64-w64-mingw32-gfortran -static $^ -o $@

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
