all: f.exe

c.exe:
	@echo compiling C++...
	g++ -o c.exe hello.c
f.exe:
	@echo compiling fortan...
	pgfortran -o f.exe hello.f

clean:
	@echo removing files...
	rm c.exe f.exe
