OBJS = spi-test.o  
CC = gcc  
CFLAGS = -Wall -O -g  

spi-test : $(OBJS)
	$(CC) $(OBJS) -o spi-test

spi-test.o : spi-test.c
	$(CC) $(CFLAGS) -c spi-test.c -o spi-test.o

clean:
	rm -rf *.o spi-test