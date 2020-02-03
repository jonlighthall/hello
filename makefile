all: c.exe f.exe

c.exe: hello.c
	@echo compiling C++...
	pgcc $^ -o $@

f.exe: hello.f
	@echo compiling fortan...
	pgfortran $^ -o $@

clean:
	@echo removing files...
	rm -fv *.o
	rm -fv *.obj
	rm -fv *.exe
	rm -fv a.out
	rm -fv *.dwf
	rm -fv *.pdb

run: c.exe f.exe
	./c.exe
	@echo
	./f.exe
	@echo
	python hello.py
	@echo
	bash hello.sh
