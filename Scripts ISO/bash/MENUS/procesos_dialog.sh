#!/bin/bash
ps -A| cut -f3 -d:| cut -f2 -d' '| grep .>/tmp/procesos.txt
ps -A |cut -b1-8|tr -d ' '>/tmp/pids.txt #245 lineas teoricas


let c=1
#el contador esta a 2 ya que la primera linea esta vacia, y la segunda es la primera con texto
let lin=$(cat /tmp/procesos.txt | wc -l)
pares=""
exec 7</tmp/procesos.txt
read -u 7 linea
read -u 7 linea
while [ $c -ne $lin ]
    do
        pares="$pares $linea $c "
        let c=$c+1
        read -u 7 linea
    done
dialog --menu "Elija un proceso: " 0 0 0 $pares 2>/tmp/elegido.txt
proceso = $(cat /tmp/elegido.txt)
killall $proceso
exec 7<&-
