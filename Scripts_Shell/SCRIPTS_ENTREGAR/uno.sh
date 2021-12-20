#!/bin/bash
let suma=0
let c=0
for i in {4..4000}
    do
        let suma=$suma+$i
    done
echo "el sumatorio de 1 a 4000 es: $suma"