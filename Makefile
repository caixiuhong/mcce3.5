CC      = g++ -g -Wall -O3
#CC	= icc -xT -static-intel -L/opt/local/lib -L/usr/local/lib

mcce: mcce.c lib/mcce.h lib/mcce.a
#	$(CC) -o mcce mcce.c mcce.a /opt/GDBM/lib/libgdbm.a -lm -lz -openmp; cp mcce bin
	$(CC) -o  mcce mcce.c  lib/analysis.o lib/mcce.a  -lglib-2.0 -lstdc++ -lgdbm -lm -lz -fopenmp; cp mcce bin 
