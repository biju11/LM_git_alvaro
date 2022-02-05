#!/bin/bash
let c=0
while [ $c -ne 100 ]
    do
        let p=$c+1
        lista[$c]=$RANDOM
        echo "añadido ${lista[$c]} en la posicion $p"
        let c=$c+1
    done
let min=99999999
let max=-1
for i in {0..99}
    do
    let a=${lista[$i]}
        if [ $a -gt $max ]
            then
                let max=$a
        fi
        if [ $a -lt $min ]
            then
                let min=$a
        fi
    done
echo "el mayor es $max"
echo "el menor es $min"
