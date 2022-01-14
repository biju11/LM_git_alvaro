#!/bin/bash
let sumatorio=0
let contador=0

echo "numero de parametros: $#"
while [ $1 ]
    do
        let sumatorio=$sumatorio+$1
        let contador=$contador+1
        shift
    done
let total=$sumatorio/$contador
echo "la media aritmetica es de $total"
echo "contados: $contador"