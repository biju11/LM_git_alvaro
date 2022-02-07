#!/bin/bash
let num=0
let suma=0
for i in {0..9}
    do
    read -p "introduzca un numero: " num
    let suma=$suma+$num
    done
echo "el sumatorio es: $suma"