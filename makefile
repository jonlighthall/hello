all: c.exe f.exe

c.exe: hello.c
	@echo compiling C++...
	g++ $^ -o $@

f.exe: hello.f
	@echo compiling fortan...
	gfortran $^ -o $@

clean:
	@echo removing files...
	rm c.exe f.exe

run:
	./c.exe
	@echo
	./f.exe
	@echo
	python hello.py
	@echo
	bash hello.sh
