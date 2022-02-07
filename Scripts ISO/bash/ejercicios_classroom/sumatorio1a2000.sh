#!/bin/bash
let suma=0
echo "Voy a hacer un sumatorio de los numeros del 1 al 2000"
for i in {1..2000}
    do
        let suma=$suma+$i

    done
echo "espera..."
sleep 1
echo $suma