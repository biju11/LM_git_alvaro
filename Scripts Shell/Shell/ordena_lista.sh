#!/bin/bash
let c=0
while [ $c -ne 100 ]
    do
        let p=$c+1
        lista[$c]=$RANDOM
        echo "añadido ${lista[$c]} en la posicion $p"
        let c=$c+1
    done
let n=100
let inter=1
let i=0
let j=0

while [ $inter -eq 1 ]
    do
        let i=0
        let j=1
        let inter=0
        let n=$n-1
        while [ $i -ne $n ]
            do
                let a=${lista[$i]}
                let b=${lista[$j]}
                if [ $a -gt $b ]
                    then
                        let inter=1
                        let c=$a
                        let a=$b
                        let b=$c
                        let lista[$i]=$a
                        let lista[$j]=$b
                fi
                let i=$i+1
                let j=$j+1

            done
    done

for x in {0..99}
    do
    let z=$x+1
        echo "posicion $z corresponde con : ${lista[$x]}"
    done