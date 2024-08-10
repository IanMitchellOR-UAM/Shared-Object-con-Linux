# Tarea: Shared-Object-con-Linux

Se pueden ver los archivos en estos enlaces: 
- [hola_main_library.c](https://github.com/IanMitchellOR-UAM/Shared-Object-con-Linux/blob/main/hola_main_library.c)
- [hola_print_library.c](https://github.com/IanMitchellOR-UAM/Shared-Object-con-Linux/blob/main/hola_print_library.c)
- [hola_print_library.h](https://github.com/IanMitchellOR-UAM/Shared-Object-con-Linux/blob/main/hola_print_library.h)

### BuildSO.sh
echo "hola_print_library.o: hola_print_library.c"
echo "gcc -c hola_print_library.c -o hola_print_library.o"
 
echo "lib_hola_print_library.so: hola_print_library.o"
echo "gcc -shared hola_print_library.o -o lib_hola_print_library.so"
 
echo "holaSOexe: hola_main_library.c"
echo "gcc -L/home/usuario/Documents -Wall -o holaSOexe hola_main_library.c -l_hola_print_library"
 
echo "to clean: rm hola_main_library.o hola_print_library.o lib_hola_print_library.so holaSOexe"
 
echo "LD_LIBRARY_PATH=/home/usuario/Documents:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH=/home/usuario/Documents:$LD_LIBRARY_PATH
 
echo "Ejecucion con carga de la shared object"
./holaSOexe

## Screenshots del resultado

![image](https://github.com/user-attachments/assets/2e3e43a8-7c07-4236-9e0d-3201d2e1425e)
