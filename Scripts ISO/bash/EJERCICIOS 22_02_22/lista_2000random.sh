#!/bin/bash
#almacenar 2000 numeros RANDOM

let c = 0
let listnum=[]
for i in {0..1999}
    do
        let listnum[$i]=$(echo $RANDOM)
        let c=$i+1
        echo "en la posicion $c se encuentra ${listnum[$i]}"
    done