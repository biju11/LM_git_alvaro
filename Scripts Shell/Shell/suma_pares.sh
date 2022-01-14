#!/bin/bash
let sumap=0
let sumai=0
for i in {1..5000}
do
    let resto=$i%2
    if [ $resto -eq 0 ]
        then 
        let sumap=$sumap+$i
        echo par sumado
    else
        let sumai=$sumai+$i
        echo impar sumado
    fi
done
echo $sumap "suma total de los pares, $sumai es la suma de los impares"