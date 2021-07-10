
program:
	gcc -c -fpic -std=c99 mem.c
	gcc -shared -o libmem.so mem.o
	gcc main.c -lmem -L. -o main
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.
	./main