CFLAGS=-g

all: spi-test

clean: clean-spi-test-debug
clean-spi-test-debug:
	rm -f spi-test-debug

spi-test-debug: spi-test.c
	$(CROSS_COMPILE)gcc $(CFLAGS) spi-test.c -g -o spi-test-debug

clean: clean-spi-test
clean-spi-test:
	rm -f spi-test

spi-test: spi-test-debug
	$(CROSS_COMPILE)strip spi-test-debug -o spi-test	
