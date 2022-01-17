#!/bin/bash

echo "creando lista random con 1000 numeros"

for i in {0..999}
    do
        let numeros[$i]=$RANDOM
        echo "${numeros[$i]} añadido a la lista"
    done
for j in {0..999}
    do
        let resto=${numeros[$j]}%2
        if [ $resto -eq 1 ]
            then
                let numeros[$j]=${numeros[$j]}+1
        fi
    done
let t=999
let p=1000
while [ $t -ne -1 ]
do
        echo "la posicion $p esta ocupada por el numero ${numeros[$t]}"
        let t=$t-1
        let p=$p-1
done




