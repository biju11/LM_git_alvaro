#!/bin/bash
#dialog radio list
#muestra todos los script de init.d
#

ls -f /etc/init.d> /tmp/inits.txt
exec 19</tmp/inits.txt
let c=1
par=""
read -u 19 linea
while [ "$linea" ]
    do
        par="$par $linea $c"
        read -u 19 linea
        let c=$c+1
    done
exec 19<&-
echo "el descriptor se cerró satisfactoriamente"
sleep 1

dialog --menu "Seleccione un Servicio de los disponibles" 0 0 0 $par 2> /tmp/opcioninit.txt
opcion=$(cat /tmp/opcioninit.txt)
dialog --title "que quiere hacer con este servicio?? " --radiolist "Seleccione:\n utilice Spacebar para marcar la opcion" 0 0 0 "start" "iniciar" on "stop" "parar" off "restart" "reiniciar" off "reload" "recargar" off 2>/tmp/opcioninit.txt
state=$(cat /tmp/opcioninit.txt)
/etc/init.d/$opcion $state
if [ "$?" -ne 0 ]
    then
    sudo !!
fi
sleep 1
clear
