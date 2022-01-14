#!/bin/bash
let i=1
while [ "$1" ]
do
    echo "parametro $i , valor $1"
    shift
    let i=$i+1
done