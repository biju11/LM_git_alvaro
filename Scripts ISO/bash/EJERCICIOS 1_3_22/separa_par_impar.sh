#!/bin/bash
let lista=[]
let cont=0
let resto=0

###################

#par es even
#odd es impar

let odd=[]
let co=0

let even=[]
let ce=0
####################

for i in {0..2999}
do
    let lista[$i]=$RANDOM
    let cont=$i+1
    echo "${lista[$i]} esta en la posicion $cont"
    let resto=${lista[$i]}%2
    if [ $resto -eq 0 ]
        then
            let even[$ce]=${lista[$i]}
            echo "${lista[$i]} es par"
            let ce=$ce+1
        else
            let odd[$co]=${lista[$i]}
            echo "${lista[$i]} es impar"
            let co=$co+1
    fi
done


######
#Your trusted Gandalf el Blanco
######