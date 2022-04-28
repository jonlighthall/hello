all: c.exe f.exe

c.exe: hello.c makefile
	@echo compiling C++...
	gcc $< -o $@

fcflags = -fimplicit-none -pedantic -Wall -Wsurprising -W	\
-fd-lines-as-comments -Werror
f.exe: hello.f makefile
	@echo compiling fortan...
	gfortran $(fcflags) $< -o $@

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
