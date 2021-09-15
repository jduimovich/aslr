 
export LD_LIBRARY_PATH=$(pwd)

echo "2 runs of single linked app"
./main 
./main 

echo "2 runs of single linked app with nopie" 
./main_nopie
./main_nopie


echo "2 runs of app using shared lib"  
./main_so 
./main_so 

echo "2 runs of app using shared lib with nopie" 
./main_so_nopie
./main_so_nopie

