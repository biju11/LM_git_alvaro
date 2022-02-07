#!/bin/bash
read -p "introduzca un numero y checkeare si es par o impar: " numero
let resto=$numero%2
if [ $numero -eq 0 ]
    then
        echo "este numero es el cero"
    elif [ $resto -eq 0 ]
        then
            echo "este numero es par"
    else
        echo "este numero es impar"
fi