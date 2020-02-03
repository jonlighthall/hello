all: c.exe f.exe

c.exe: hello.c
	@echo compiling C++...
	pgcc $^ -o $@

f.exe: hello.f
	@echo compiling fortan...
	pgfortran $^ -o $@

clean:
	@echo removing files...
	rm -fv c.exe f.exe
	rm -fv a.out

run: c.exe f.exe
	./c.exe
	@echo
	./f.exe
	@echo
	python hello.py
	@echo
	bash hello.sh
