#!/bin/bash

for i in {0..99}
do
    let a=$i+1
    let resto=a%2
    if [ $resto -eq 0 ]
        then
            echo "$a es un numero par"
        else
            echo "$a es un numero impar"
    fi
done