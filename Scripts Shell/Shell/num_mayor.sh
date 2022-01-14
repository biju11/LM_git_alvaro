#!/bin/bash

let min=99999
let max=-1
while [ "$1" ]
do
   if [ $min -gt $1 ]
        then
        let min=$1
   fi
   if [ $max -lt $1 ]
        then
            let max=$1
   fi
    shift
done
echo "el maximo de todos es el $max"
echo "el minimo de todos es el $min"