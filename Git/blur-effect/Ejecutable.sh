#!/bin/bash          
          echo Practica 1 de Computacion Paralela


#Compilar el archivo

gcc -ggdb `pkg-config --cflags opencv` -o `basename blur-effect-threads.c .c` blur-effect-threads.c `pkg-config --libs opencv` -lm -pthread
touch salida.txt
echo %%%%%%%%%%%%%%%%%%%%% >salida.txt
echo ejecucion de una imagen de 720 pixeles >>salida.txt
echo ejecucion con tres de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 1 2>>salida.txt
echo ejecucion con tres de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 2 2>>salida.txt
echo ejecucion con tres de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 4 2>>salida.txt
echo ejecucion con tres de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 8 2>>salida.txt
echo ejecucion con tres de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 3 16 2>>salida.txt

echo ejecucion con 7 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 1 2>>salida.txt
echo ejecucion con 7 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 2 2>>salida.txt
echo ejecucion con 7 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 4 2>>salida.txt
echo ejecucion con 7 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 8 2>>salida.txt
echo ejecucion con 7 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 5 16 2>>salida.txt

echo ejecucion con 11 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 1 2>>salida.txt
echo ejecucion con 11 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 2 2>>salida.txt
echo ejecucion con 11 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 4 2>>salida.txt
echo ejecucion con 11 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 8 2>>salida.txt
echo ejecucion con 11 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 11 16 2>>salida.txt

echo ejecucion con 17 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 1 2>>salida.txt
echo ejecucion con 17 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 2 2>>salida.txt
echo ejecucion con 17 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 4 2>>salida.txt
echo ejecucion con 17 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 8 2>>salida.txt
echo ejecucion con 17 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo720.jpg 17 16 2>>salida.txt


echo %%%%%%%%%%%%%%%%%%%%%%%%%%%
echo ejecucion de una imagen de 1080 pixeles 2>>salida.txt
echo ejecucion con tres de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 1 2>>salida.txt
echo ejecucion con tres de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 2 2>>salida.txt
echo ejecucion con tres de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 4 2>>salida.txt
echo ejecucion con tres de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 8 2>>salida.txt
echo ejecucion con tres de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 3 16 2>>salida.txt

echo ejecucion con 7 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 1 2>>salida.txt
echo ejecucion con 7 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 2 2>>salida.txt
echo ejecucion con 7 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 4 2>>salida.txt
echo ejecucion con 7 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 8 2>>salida.txt
echo ejecucion con 7 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 5 16 2>>salida.txt
echo ejecucion con 7 de kernel y 32 hilos >>salida.txt

echo ejecucion con 11 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 1 2>>salida.txt
echo ejecucion con 11 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 2 2>>salida.txt
echo ejecucion con 11 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 4 2>>salida.txt
echo ejecucion con 11 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 8 2>>salida.txt
echo ejecucion con 11 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 11 16 2>>salida.txt

echo ejecucion con 17 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 1 2>>salida.txt
echo ejecucion con 17 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 2 2>>salida.txt
echo ejecucion con 17 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 4 2>>salida.txt
echo ejecucion con 17 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 8 2>>salida.txt
echo ejecucion con 17 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo1080.jpg 17 16 2>>salida.txt

echo ejecucion de una imagen de 4k pixeles 2>>salida.txt
echo ejecucion con tres de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 1 2>>salida.txt
echo ejecucion con tres de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 2 2>>salida.txt
echo ejecucion con tres de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 4 2>>salida.txt
echo ejecucion con tres de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 8 2>>salida.txt
echo ejecucion con tres de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 3 16 2>>salida.txt

echo ejecucion con 7 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 1 2>>salida.txt
echo ejecucion con 7 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 2 2>>salida.txt
echo ejecucion con 7 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 4 2>>salida.txt
echo ejecucion con 7 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 8 2>>salida.txt
echo ejecucion con 7 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 5 16 2>>salida.txt

echo ejecucion con 11 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 1 2>>salida.txt
echo ejecucion con 11 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 2 2>>salida.txt
echo ejecucion con 11 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 4 2>>salida.txt
echo ejecucion con 11 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 8 2>>salida.txt
echo ejecucion con 11 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 11 16 2>>salida.txt

echo ejecucion con 17 de kernel y un hilo >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 1 2>>salida.txt
echo ejecucion con 17 de kernel y dos hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 2 2>>salida.txt
echo ejecucion con 17 de kernel y cuatro hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 4 2>>salida.txt
echo ejecucion con 17 de kernel y ocho hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 8 2>>salida.txt
echo ejecucion con 17 de kernel y 16 hilos >>salida.txt
time ./blur-effect-threads fondo4k.jpg 17 16 2>>salida.txt
