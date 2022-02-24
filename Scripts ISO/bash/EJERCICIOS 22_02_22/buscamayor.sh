#!/bin/bash
let c = 0
let listnum=[]
for i in {0..1999}
    do
        let listnum[$i]=$(echo $RANDOM)
        let c=$i+1
        echo "en la posicion $c se encuentra ${listnum[$i]}"
    done
let c=0
sleep 1
#posible clear
#posible sleep 1
echo "esta lista contiene ${#listnum[@]} elementos"
echo "ahora buscaré quien es el mayor de todos los numeros de esta lista"
let min=99999
let max=-1
let selec=${listnum[$c]}
if [ $selec -gt $max ]
    then
        echo "$selec es mayor que $max"
        let max=$selec
        echo $max "es el maximo"
            if [ $selec -lt $min ]
                then
                    echo "$selec es menor que $min"
                    let min=$selec
                    echo $min "es el minimo"

            fi
    let c=$c+1
    let selec=${listnum[$c]} 

fi
