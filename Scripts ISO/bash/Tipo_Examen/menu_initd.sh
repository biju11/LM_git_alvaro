#!/bin/bash
ls /etc/init.d/ > almacena.txt
exec 19<almacena.txt
let tam = $(cat almacena.txt | wc -l)
read -u 19 linea
while [ $linea ]
do
    for i in {0..$tam}
    
done

exec 19<&-