#!/bin/bash
exec 42< ejemplo.txt
read -u 42 linea
while [ "$linea" ]
    do
        echo "$linea"
        read -u 42 linea
    done