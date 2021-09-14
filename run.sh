 
cc  -c -no-pie slib1.c
cc  -c -no-pie slib2.c
cc -no-pie main.c slib1.o slib2.o -o  main_no_pie

./main_no_pie

