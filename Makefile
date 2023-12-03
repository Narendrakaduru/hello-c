CFLAGS = -Wno-implicit-functions-declaration

all: final

final: main.o hello.o
	@echo "Linking and producing the final application"
	gcc $(CFLAGS) main.o hello.o -o final
	chmod +x final

main.o: main.c
	@echo "Compiling the main file"
	gcc $(CFLAGS) -c main.c

hello.o: hello.c
	@echo "Compiling the hello file"
	gcc $(CFLAGS) -c hello.c

clean:
	@echo "Removing everything but not source files"
	rm -rf *.o final
