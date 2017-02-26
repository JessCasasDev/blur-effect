#!/bin/bash          
          echo Practica 1 de computacion paralela


#Compilar el archivo

gcc -ggdb `pkg-config --cflags opencv` -o `basename blur-effect-threads.c .c` blur-effect-threads.c `pkg-config --libs opencv` -lm -pthread
touch salida.txt
echo %%%%%%%%%%%%%%%%%%%%% >salida.txt
echo ejecucion de una imagen de 720 pixeles >>salida.txt
echo ejecucion con tres de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 1 >>salida.txt
echo ejecucion con tres de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 2 >>salida.txt
echo ejecucion con tres de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 4 >>salida.txt
echo ejecucion con tres de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 8 >>salida.txt
echo ejecucion con tres de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 16 >>salida.txt
echo ejecucion con tres de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 32 >>salida.txt
echo ejecucion con tres de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 64 >>salida.txt
echo ejecucion con tres de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 128 >>salida.txt

echo ejecucion con 7 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 1 >>salida.txt
echo ejecucion con 7 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 2 >>salida.txt
echo ejecucion con 7 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 4 >>salida.txt
echo ejecucion con 7 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 8 >>salida.txt
echo ejecucion con 7 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 16 >>salida.txt
echo ejecucion con 7 de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 32 >>salida.txt
echo ejecucion con 7 de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 64 >>salida.txt
echo ejecucion con 7 de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 128 >>salida.txt

echo ejecucion con 11 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 1 >>salida.txt
echo ejecucion con 11 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 2 >>salida.txt
echo ejecucion con 11 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 4 >>salida.txt
echo ejecucion con 11 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 8 >>salida.txt
echo ejecucion con 11 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 16 >>salida.txt
echo ejecucion con 11 de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 32 >>salida.txt
echo ejecucion con 11 de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 64 >>salida.txt
echo ejecucion con 11 de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 128 >>salida.txt

echo ejecucion con 17 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 1 >>salida.txt
echo ejecucion con 17 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 2 >>salida.txt
echo ejecucion con 17 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 4 >>salida.txt
echo ejecucion con 17 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 8 >>salida.txt
echo ejecucion con 17 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 16 >>salida.txt
echo ejecucion con 17 de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 32 >>salida.txt
echo ejecucion con 17 de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 64 >>salida.txt
echo ejecucion con 17 de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 128 >>salida.txt


echo %%%%%%%%%%%%%%%%%%%%%%%%%%%
echo ejecucion de una imagen de 1080 pixeles >>salida.txt
echo ejecucion con tres de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 1 >>salida.txt
echo ejecucion con tres de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 2 >>salida.txt
echo ejecucion con tres de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 4 >>salida.txt
echo ejecucion con tres de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 8 >>salida.txt
echo ejecucion con tres de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 16 >>salida.txt
echo ejecucion con tres de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 32 >>salida.txt
echo ejecucion con tres de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 64 >>salida.txt
echo ejecucion con tres de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 128 >>salida.txt

echo ejecucion con 7 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 1 >>salida.txt
echo ejecucion con 7 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 2 >>salida.txt
echo ejecucion con 7 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 4 >>salida.txt
echo ejecucion con 7 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 8 >>salida.txt
echo ejecucion con 7 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 16 >>salida.txt
echo ejecucion con 7 de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 32 >>salida.txt
echo ejecucion con 7 de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 64 >>salida.txt
echo ejecucion con 7 de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 128 >>salida.txt

echo ejecucion con 11 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 1 >>salida.txt
echo ejecucion con 11 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 2 >>salida.txt
echo ejecucion con 11 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 4 >>salida.txt
echo ejecucion con 11 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 8 >>salida.txt
echo ejecucion con 11 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 16 >>salida.txt
echo ejecucion con 11 de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 32 >>salida.txt
echo ejecucion con 11 de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 64 >>salida.txt
echo ejecucion con 11 de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 128 >>salida.txt

echo ejecucion con 17 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 1 >>salida.txt
echo ejecucion con 17 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 2 >>salida.txt
echo ejecucion con 17 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 4 >>salida.txt
echo ejecucion con 17 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 8 >>salida.txt
echo ejecucion con 17 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 16 >>salida.txt
echo ejecucion con 17 de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 32 >>salida.txt
echo ejecucion con 17 de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 64 >>salida.txt
echo ejecucion con 17 de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 128 >>salida.txt




echo %%%%%%%%%%%%%%%%%%%%%%%%
echo ejecucion de una imagen de 4k pixeles >>salida.txt
echo ejecucion con tres de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 1 >>salida.txt
echo ejecucion con tres de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 2 >>salida.txt
echo ejecucion con tres de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 4 >>salida.txt
echo ejecucion con tres de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 8 >>salida.txt
echo ejecucion con tres de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 16 >>salida.txt
echo ejecucion con tres de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 32 >>salida.txt
echo ejecucion con tres de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 64 >>salida.txt
echo ejecucion con tres de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 128 >>salida.txt

echo ejecucion con 7 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 1 >>salida.txt
echo ejecucion con 7 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 2 >>salida.txt
echo ejecucion con 7 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 4 >>salida.txt
echo ejecucion con 7 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 8 >>salida.txt
echo ejecucion con 7 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 16 >>salida.txt
echo ejecucion con 7 de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 32 >>salida.txt
echo ejecucion con 7 de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 64 >>salida.txt
echo ejecucion con 7 de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 128 >>salida.txt

echo ejecucion con 11 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 1 >>salida.txt
echo ejecucion con 11 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 2 >>salida.txt
echo ejecucion con 11 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 4 >>salida.txt
echo ejecucion con 11 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 8 >>salida.txt
echo ejecucion con 11 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 16 >>salida.txt
echo ejecucion con 11 de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 32 >>salida.txt
echo ejecucion con 11 de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 64 >>salida.txt
echo ejecucion con 11 de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 128 >>salida.txt

echo ejecucion con 17 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 1 >>salida.txt
echo ejecucion con 17 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 2 >>salida.txt
echo ejecucion con 17 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 4 >>salida.txt
echo ejecucion con 17 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 8 >>salida.txt
echo ejecucion con 17 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 16 >>salida.txt
echo ejecucion con 17 de kernel y 32 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 32 >>salida.txt
echo ejecucion con 17 de kernel y 64 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 64 >>salida.txt
echo ejecucion con 17 de kernel y 128 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 128 >>salida.txt


