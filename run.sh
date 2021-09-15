
cc  -c slib1.c
cc  -c slib2.c
cc  main.c slib1.o slib2.o -o  main 

cc  -c -no-pie slib1.c
cc  -c -no-pie slib2.c
cc -no-pie main.c slib1.o slib2.o -o  main_nopie

cc  -c slib1.c
cc  -c  slib2.c
cc -shared -o libslib.so  slib1.o slib2.o
cc  main.c -L $(pwd) -lslib -o  main_so 

cc  -c -no-pie slib1.c
cc  -c -no-pie slib2.c
cc -shared -o libslib_nopie.so  slib1.o slib2.o
cc -no-pie main.c -L $(pwd) -lslib_nopie -o  main_so_nopie

export LD_LIBRARY_PATH=$(pwd)

./main 
./main_nopie
./main_so 
./main_so_nopie

