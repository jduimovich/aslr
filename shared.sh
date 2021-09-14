 
cc  -c -no-pie slib1.c
cc  -c -no-pie slib2.c
cc -no-pie main.c -L$(pwd) -lslib -o  main_so_nopie

export LD_LIBRARY_PATH=$(pwd)

./main_so_nopie

