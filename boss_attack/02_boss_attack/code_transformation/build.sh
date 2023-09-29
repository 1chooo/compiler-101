rm -f code_transformation.yy.c
rm -f code_transformation.yy.o
rm -f code_transformation

flex -o code_transformation.yy.c code_transformation.l
gcc -c -g -I.. code_transformation.yy.c
gcc -o code_transformation code_transformation.yy.o -ll
./code_transformation < transInput1.in