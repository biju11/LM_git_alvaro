#!/bin/bash
read -p "que IP quiere buscar? : " dir
ping -c2 $dir

if [ $? -eq 0 ]
    then
        echo "funciona"
    else
        echo "ali es tontisimo"
fi

# $? es es el codigo de finalizacion que todo programa envia al SO
# si todo va bien devuelve 0, si no, distinto de 0