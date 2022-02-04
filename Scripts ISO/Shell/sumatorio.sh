#!/bin/bash
let suma=0
let c=0
for i in {1..4000}
    do
        let suma=$suma+$i
        let c=$c+1
        if [ $c -eq 50 ]
            then
                echo "suma por ahora: $suma"
                let c=0
        fi
    done
echo "el sumatorio de 1 a 4000 es: $suma"