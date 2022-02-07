#!/bin/bash
echo "[+]   voy a almacenar en una lista los primeros 100 numeros impares y te los dire..."
echo "espera ..."
sleep 1
let c=0
let mod=0
list=[]
for i in {0..200}
do
    let mod=$i%2
    if [ $mod -ne 0 ]
        then
            list[c]=$i
            let c=$c+1
    fi
done
let c=0
let p=$c+1
for j in {0..99}
do
    echo "en la posicion $p se encuentra el numero ${list[$c]}"
    let c=$c+1
    let p=$c+1
done