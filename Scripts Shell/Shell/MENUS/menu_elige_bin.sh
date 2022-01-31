#!/bin/bash

ls -f /usr/bin/x* |cut -d/ -f4 > /tmp/bin_temp.txt
let c=1
exec 47</tmp/bin_temp.txt
pareja=""
read -u 47 linea


while [ "$linea" ]
    do
    pareja="$pareja $linea $c "
    read -u 47 linea
    echo "he leido $linea , lo añadiré en la siguiente pasada del bucle"
    let c=$c+1
    done
sleep 5
exec 47<&-
dialog --menu "Seleccione el Binario a Ejecutar" 0 0 0 $pareja 2>/tmp/opcion.txt
programa=$(cat /tmp/opcion.txt)
/usr/bin/$programa
sleep 3
clear
