#!/bin/bash
for i in {0..99}
    do
        num[$i]=$RANDOM
        echo "${num[$i]}"
    done
echo "he generado una lista de ${#num[@]} numeros"
let a=${#num[@]}-2
let s=${num[0]}
for j in {0..$a}
    do
        let t=$j+1
        num[$j]=${num[$t]}
    done
    num[$t]=$s
