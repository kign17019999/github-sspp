#
#
#

SRT=sorting.o wtime.o
MA=matrix_add.o wtime.o
LFLAGS=-fopenmp
CFLAGS=-O4 -fopenmp 


all: wtime.o matrix_add sorting

matrix_add: $(MA)
	$(CC) $(LFLAGS) -o$@ $(MA)
sorting: $(SRT)
	$(CC) $(LFLAGS) -o$@ $(SRT)

clean:
	/bin/rm -fr *.o

.c.o:
	$(CC) $(CFLAGS) -c -o$@ $< 
