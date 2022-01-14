#!/bin/bash
read -p "a que usuario busca? : " user
verif=$(cat /etc/passwd| cut -f1 -d:|grep -w $user)
if [ $verif ]
    then
        echo "el usuario $user SI se encuentra registrado"
    else
        echo "el usuario $user NO se encuentra registrado"
fi
