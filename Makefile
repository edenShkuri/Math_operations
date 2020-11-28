
all:mymaths mymathd mains maind

mains: main.o  libmyMath.a
	gcc -Wall -g -o mains main.o libmyMath.a 

maind: main.o  
	gcc -Wall -g -o maind main.o ./libmyMath.so 

mymaths: libmyMath.a	

libmyMath.a: power.o basicMath.o	
	ar -rcs libmyMath.a power.o basicMath.o

mymathd: libmyMath.so 
	
libmyMath.so : power.o basicMath.o
	gcc -shared power.o basicMath.o -o libmyMath.so 

basicMath.o: basicMath.c myMath.h
	gcc -Wall -g -c basicMath.c -o basicMath.o

main.o: main.c myMath.h
	gcc -Wall -g -c main.c 

power.o: power.c myMath.h
	gcc -Wall -g -fPIC -c power.c 

.PHONY: clean all mymathd mymaths

clean: 
	rm *.o -f maind mains *.a *.so
