#!/bin/bash
ls /bin > testo.txt
exec 17<testo.txt
read -u 17 linea
while [ $linea ]
    do
        echo "$linea"
        hash = md5sum /bin/$linea
        echo "$hash" >> hashes.txt
        read -u 17 $linea
    done