#!/bin/bash
read -p "que url quiere analizar?: " url
wget -d $url 2> /tmp/urldestino.txt
serv=$(cat /tmp/urldestino.txt | grep -w Server | cut -f2 -d:)
if [ "$serv" ]
    then
        echo "esta url tiene un servidor tipo $serv"
    else
        echo no lo encuentro
fi