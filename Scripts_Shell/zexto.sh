#!/bin/bash

read -p "que usuario busca? : " usuario
esta=$(cat /etc/passwd|cut -f1 -d:|grep -w "$usuario")
if [ "$esta" ]
    then
        echo "El usuario $usuario SI esta registrado"
    else
        echo "El usuario $usuario NO esta registrado"
fi