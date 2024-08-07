echo "hola_print_library.o: hola_print_library.c"
gcc -c hola_print_library.c -o hola_print_library.o

echo "lib_hola_print_library.so: hola_print_library.o"
gcc -shared hola_print_library.o -o lib_hola_print_library.so

echo "holaSOexe: hola_main_library.c"
gcc -L/home/usuario/so210/makeso/makelibso/ -Wall -o holaSOexe hola_main_library.c -l_hola_print_library

echo "to clean: rm hola_main_library.o hola_print_library.o lib_hola_print_library.so holaSOexe"

echo "LD_LIBRARY_PATH=/home/usuario/so210/makeso/makelibso/:$LD_LIBRARY_PATH"
LD_LIBRARY_PATH=/home/usuario/so210/makeso/makelibso/:$LD_LIBRARY_PATH

echo "Ejecucion con carga de la shared object"
./holaSOexe
