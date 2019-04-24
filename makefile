all: c.exe f.exe

c.exe: hello.c
	@echo compiling C++...
	pgcc $^ -o $@

f.exe: hello.f
	@echo compiling fortan...
	pgfortran $^ -o $@

clean:
	@echo removing files...
	rm c.exe f.exe
