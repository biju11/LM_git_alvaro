#!/bin/bash
let suma=0
let c=0
j=0
for i in {4..4000}
    do
        let suma=$suma+$i
        let c=$c+1
        if [ $c -eq 30 ]
            then
                let j=$j+1
                echo "suma por ahora: $suma, este es el intermedio numero $j"
                let c=0
        fi
    done
echo "el sumatorio de 1 a 4000 es: $suma"