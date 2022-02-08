#!/bin/bash

ps -A>/tmp/aux.txt
cat /tmp/aux.txt|cut -b1-7|tr -d ' '>/tmp/pid.txt
cat /tmp/aux.txt|cut -f3 -d:|cut -f2 -d' '|grep .>/tmp/nombres.txt
pares=""

exec 8</tmp/pid.txt
exec 9</tmp/nombres.txt

read -u 8 pid
read -u 8 pid
read -u 9 nombre

while [ "$nombre" ]
 do
        pares="$pares $pid $nombre "
        read -u 8 pid
        read -u 9 nombre
 done

dialog --menu "Seleccione el Programa según PID" 0 0 0 $pares 2>/tmp/proceso.txt
selec=$(cat /tmp/proceso.txt)
kill -9 $selec
exec 8<&-
exec 9<&-
clear