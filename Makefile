all: spi-test

clean:
	rm -f spi-test

spi-test: spi-test.c
	$(CC) $(CFLAGS) spi-test.c -o spi-test
