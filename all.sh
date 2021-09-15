 
export LD_LIBRARY_PATH=$(pwd)

echo "2 runs of single linked app"
./main 
./main 

echo "2 runs of single linked app addr-no-randomize"
setarch --addr-no-randomize ./main
setarch --addr-no-randomize ./main

echo "2 runs of single linked app with nopie --addr-no-randomize" 
./main_nopie
./main_nopie
echo "2 runs of single linked app with nopie" 
setarch --addr-no-randomize ./main_nopie
setarch --addr-no-randomize ./main_nopie

echo "2 runs of app using shared lib --addr-no-randomize "  
./main_so 
./main_so 
echo "2 runs of app using shared lib"  
setarch --addr-no-randomize  ./main_so 
setarch --addr-no-randomize  ./main_so 

echo "2 runs of app using shared lib with nopie" 
./main_so_nopie
./main_so_nopie

echo "2 runs of app using shared lib with nopie --addr-no-randomize " 
setarch --addr-no-randomize ./main_so_nopie
setarch --addr-no-randomize ./main_so_nopie

