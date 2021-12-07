all: tipo1 tipo2 tipo3 tipo4 tipo5 tipo1.o tipo2.o tipo3.o tipo4.o tipo5.o

tipo1.o: tipo1.s
	as -g -o tipo1.o tipo1.s
tipo2.o: tipo2.s
	as -g -o tipo2.o tipo2.s
tipo3.o: tipo3.s
	as -g -o tipo3.o tipo3.s
tipo4.o:
	as -g -o tipo4.o tipo4.s
tipo5.o:
	as -g -o tipo5.o tipo5.s
tipo1: tipo1.o
	ld -g -o tipo1 tipo1.o
tipo2: tipo2.o
	ld -g -o tipo2 tipo2.o
tipo3: tipo3.o
	g++ -nostartfiles -o tipo3 tipo3.o
tipo4: tipo4.o
	ld -g -o tipo4 tipo4.o
tipo5: tipo5.o
	g++ -nostartfiles -o tipo5 tipo5.o
clean:
	rm tipo1 tipo1.o tipo2 tipo2.o tipo3 tipo3.o tipo4 tipo4.o tipo5 tipo5.o




























