#!/bin/bash
dialog --menu "Elija una Opcion: " 0 0 0 1 "Apagar" 2 "Reiniciar el Equipo" 3 "Cambio de Nivel" 2>/tmp/aux.txt
opcion=$(cat /tmp/aux.txt)
case $opcion in
    1)
        echo "Se Apaga"
        ;;
    2)
        echo "Se Reinicia"
        ;;
    3)
        dialog --inputbox "Introduzca nuevo nivel" 0 0 2>/tmp/aux2.txt
        nivel=$(cat /tmp/aux2.txt)
        echo "se hara un init $nivel"
esac
sleep 1
clear


#dialog --menu "Seleccione un nivel" 0 0 0 0 0 0 1 "Parada Sistema [INIT 0]" 2 "" ESTO ERA UN PROPOSITO DE SUBMENU EN LA OPCION 3