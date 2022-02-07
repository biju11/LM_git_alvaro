#!/bin/bash
echo "[+]   voy a almacenar en una lista los primeros 100 numeros impares y te los dire..."
echo "espera ..."
let c=0
let mod=0
list=[]
for i in {0..200}
do
    let mod=$i%2
    if [ $mod -ne 0 ]
        then
            echo "$i es impar"
            list[c]=$i
            let c=$c+1
    fi
done
