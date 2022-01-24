#!/bin/bash
for i in {0..5}
do
    read -p "introduzca una marca:" >> coches.txt 
done

sleep 10

rm /tmp/coches2.txt
read -p "Introduzca una marca para cambiar: " oldm
read -p "Nuevo nombre: " newm

exec 8<coches.txt
read -u 8 $linea
while [ "$linea" ]
    do
        if [ "$linea" = "$oldm" ]
            then
                echo "$newm">>/tmp/coches2.txt
            else
                echo "$linea">>/tmp/coches2.txt
        fi
        read -u 8 linea
    done
exec<&-
