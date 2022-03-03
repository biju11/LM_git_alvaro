#!/bin/bash
let lista=[]
let suma = 0
let media = 0
for i in {0..199}
do
    let lista[$i]=$RANDOM
    echo "${lista[$i]} está almacenado"
    let suma=$suma+${lista[$i]}
done

echo "esta lista tiene ${#lista[@]} elementos"
let media=$suma/${#lista[@]}
echo "$media es la media de los numeros aleatorios"
################################
#Your trusted Gandalf el Blanco
################################
