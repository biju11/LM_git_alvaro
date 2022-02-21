#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<h1>Hola Gilipollas</h1>"
echo "$QUERY_STRING"

usu=$(echo $QUERY_STRING|cut -f2 -d=)
r=$(cat /etc/passwd|cut -f1 -d:| grep -w $usu)
if [ "$r" ]
    then
    echo "$usu existe"
    else
    echo "<br>"
    echo "$usu no existe"
    echo "<br>"
    echo "<img src='https://preview.redd.it/bpfzz62bh0s61.jpg?auto=webp&s=5ea5a17393792ece4deb74ceacf1b60d07e6ae25'>"
fi