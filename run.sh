 
cc  -c slib1.c
cc  -c slib2.c

cc -shared -o libslib.so  slib1.o slib2.o

cc  main.c slib1.o slib2.o -o  main 
cc  main.c -L$(pwd) -lslib -o  main_so

./main
./main_so
