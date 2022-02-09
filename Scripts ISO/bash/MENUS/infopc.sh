#!/bin/bash
cat /proc/cpuinfo >/tmp/cpu.txt #"cortar 5 primeras lineas"
proc=$(cat /proc/cpu.txt)

cat /proc/meminfo|grep 'Mem*' >/tmp/ram.txt #"total y disponible"
ram=$(cat /tmp/ram.txt)

cat /proc/partitions >/tmp/particiones.txt
part=$(cat /tmp/particiones.txt)

cat /proc/uptime| cut -f1 -d' '>/tmp/tiempo.txt
let tiempo=$(cat /proc/uptime |cut -f1 -d' ')%60

cat /proc/modules|cut -f1 -d' ' >/tmp/mods.txt
mods=$(cat /tmp/mods.txt)

cat /proc/devices
    #text dialog --infobox "$almacenar_fichero" 0 0 ; sleep 5
    dialog --infobox "$proc" 50 100