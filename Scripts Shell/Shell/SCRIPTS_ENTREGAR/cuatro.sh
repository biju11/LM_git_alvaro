#!/bin/bash
read -p "Que programa desea ejecutar? : " programa
$programa &
echo "usted ha elegido este programa: $programa"
sleep 10
killall $programa
echo "$programa finalizado"