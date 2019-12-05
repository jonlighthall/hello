all: c.exe f.exe

c.exe: hello.c
	@echo compiling C++...
	g++ $^ -o $@

f.exe: hello.f
	@echo compiling fortan...
	gfortran $^ -o $@

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
