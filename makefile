#ds compiler
CC = g++

#ds compiler flags
CFLAGS = -c

#ds linker flags
LFLAGS = -fopenmp

#ds default field
all: main

	$(CC) $(LFLAGS) bin/CDomain.o bin/main.o -o bin/diffusion_openmp

#ds object files
main:

	rm -rf bin
	mkdir bin
	$(CC) $(CFLAGS) src/CDomain.cpp -o bin/CDomain.o
	$(CC) $(CFLAGS) src/main.cpp -o bin/main.o

#ds mark clean as independent
.PHONY: clean

#ds clean command
clean:

	rm -rf bin
