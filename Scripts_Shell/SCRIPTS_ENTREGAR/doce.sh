#!/bin/bash
read -p "que url quiere analizar?: " url
serv=$(wget -d $url > destino.txt | grep Server)
if [ $serv ]
    then
        echo "esta url tiene un servidor tipo $serv"
    else
        echo no lo encuentro
fi