#!/bin/bash

cat /etc/passwd| cut -f1 -d:|  >/tmp/usuarioh.txt
pares=" "
let i=1
exec 24</tmp/usuarioh.txt
read -u 24 linea
while [ $linea ]
    do
        pares="$pares $linea $i"
        let i=$i+1
        read -u 24 linea
    done
echo $pares