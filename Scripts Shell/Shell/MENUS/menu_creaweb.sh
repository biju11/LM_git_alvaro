#!/bin/bash
cat /etc/passwd| cut -f1,6 -d:| grep -w /home | cut -f1 -d:>/tmp/usu.txt
cat /tmp/usu.txt
pares=""
let i=1
exec 25</tmp/usu.txt
read -u 25 linea
while [ "$linea" ]
    do
        pares="$pares $linea $i"
        let i=$i+1
        read -u 25 linea
    done
echo $pares
dialog --menu "Elija un usuario" 0 0 0 $pares 2>/tmp/usu_sel.txt
usuario=$(cat /tmp/usu_sel.txt)
mkdir -p /home/$usuario/public_html
echo "<html><body><h1>Hola soy $usuario</h1></body></html>">/home/$usuario/public_html/index.html
sleep 1
clear
exec 25<&-
