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
cat $fichero>/tmp/aux.txt
#exec 9</tmp/aux.txt
while [ "$1" ]
    do
        let sel_linea=$1-1
        echo $sel_linea
    done
#exec 9<&-
#let tamfich=$(wc /tmp/aux.txt -l | cut -f1 -d' ')
#echo $tam
#let i=0
#let counter=0
#params=[]
#while [ $1 ]
#    do
#        let params[$i]=$1-1
#        echo "params[$i]"
#        let i=$i+1
#        while [ $counter -ne $tamfich ]
#        do
#            let t=${params[$i]}
#        done
#        if [  ]
#        echo ""
#        shift
#   done
#echo "he recibido $i parametros"