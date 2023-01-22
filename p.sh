#!/bin/bash

clear
opcion=9
num1=10
num2=11

function divide() {
    div1=$1
    div2=0
    while [ $div1 -gt 0 ]
    do 
        ((div1/=2))
        ((div2+=1))
    done
    echo $div2
}

while [ $opcion -ne 0 ]
do
    echo ----
    echo Menú
    echo ----
    echo 1 - Mostrar archivos y carpetas del directorio actual
    echo 2 - Ejecuta el comando pwd
    echo 3 - Suma los dos números que quieras
    echo 4 - Resta los dos números que quieras
    echo 5 - Veces que un número tiene que ser dividido entre 2 para llegar a 0
    echo 0 - Salir del programa
    echo Selecciona una opción del menú
    read opcion

    if [ $opcion == 1 ]
    then
        echo ----
        ls
    fi

    if [ $opcion == 2 ]
    then
        echo ----
        pwd
    fi

    if [ $opcion == 3 ]
    then
        echo ----
        echo Escribe el primer número
        read num1
        echo Escribe el segundo número
        read num2
        echo Calculando...
        echo "La suma de los dos números es: $((num1 + num2))"
    fi

    if [ $opcion == 4 ]
    then
        echo ----
        echo Escribe el primer número
        read num1
        echo Escribe el segundo número
        read num2
        echo Calculando...
        echo "La resta de los dos números es: $((num1 - num2))"
    fi

    if [ $opcion == 5 ]
    then
        numero=1
        echo ----
        echo Escribe el número que quieras
        read numero
        echo Calculando...
        echo La solución es:
        divide $numero
    fi
done