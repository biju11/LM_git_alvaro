#!/bin/bash
#recibe parametros de esta forma /el.sh 5 6 3 4
#este script tiene que extraer las lineas elegidas por el usuario de un fichero de texto
# '$#' recoge el numero de parametros introducidos
#seguramente haya que usar un exec
#bucle while [ $archivo_en_variable ]
#if y elif para extraer las lineas y escribirla en un fichero aux.txt
#
#
#
#
#

read -p "Escriba la ruta exacta del fichero:    " fichero
sleep 1
echo -e "\r"
cat $fichero>aux.txt
exec 9<aux.txt
read -u 9 linea
while [ '$linea' ]
    do
        echo "$linea"
        read -u 9 linea
    done

exec 9<&-
