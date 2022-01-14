#!/bin/bash
let c=0
while [ $c -ne 100 ]
    do
        let p=$c+1
        lista[$c]=$RANDOM
        echo "añadido ${lista[$c]} en la posicion $p"
        let c=$c+1
    done
