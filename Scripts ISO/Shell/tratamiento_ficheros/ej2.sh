#!/bin/bash

exec 45<coches.txt
exec 44<pags.txt
read -u 45 a
read -u 44 b
while [ "$a" ]
do
    echo "la marca es $a , su web es: $b"
    read -u 45 a
    read -u 44 b
done

exec 45<&-
exec 44<&-