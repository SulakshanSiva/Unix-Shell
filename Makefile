CC = gcc
CFLAGS = -Wall -std=c99

myShell: main.o unixShell.o
	$(CC) $(CFLAGS) main.o unixShell.o -o myShell

main.o: main.c 
	$(CC) $(CFLAGS) -c main.c

unixShell.o: unixShell.c unixShell.h
	$(CC) $(CFLAGS) -c unixShell.c

clean:
	rm *.o myShell
