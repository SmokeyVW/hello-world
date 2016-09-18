
main:	main.o $(OBJS)
	cc main.o $(OBJS) -o main -lc

main.o:	main.c
	cc main.c -o main.o -c -I $(INCLUDE) -Wall

build:	main

run:	main
	./main -foo

clean:
	rm -f *.o *~

realclean:	clean
	rm -f main
