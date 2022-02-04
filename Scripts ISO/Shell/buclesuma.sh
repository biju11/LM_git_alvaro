#!/bin/bash

let suma = 0
read -p "Introduce numero: " n1
while [ $n1 -ne -1 ]
do 
    let suma = $suma + $n1
    echo "suman $suma"
    read -p "introduzca otro numero: " n1

done