#!/bin/bash

dialog --title "Nombre" --inputbox "Introduzca su Nombre" 10 40 2>/tmp/aux.txt
nombre=$(cat /tmp/aux.txt)
dialog --title "Nombre" --msgbox "el nombre introducido es:\n$nombre" 10 40
sleep 1
clear