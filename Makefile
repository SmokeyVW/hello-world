
main:	main.o $(OBJS)
	cc main.o $(OBJS) -o main -lc

main.o:	main.c
	cc main.c -o main.o -c -I $(INCLUDE) -Wall

build:	main

dev:
	wish my_app.tcl some args go here

run:	main
	./main -foo -bar

clean:
	rm -f *.o *~

realclean:	clean
	rm -f main
