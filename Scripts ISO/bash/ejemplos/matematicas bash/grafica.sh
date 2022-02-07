#!/bin/bash
read -p "Introduzca la funcion: " funcion
read -p "Fichero Gif: " fgif
echo "set terminal gif">aux.gplot
echo "set output '$fgif'">>aux.gplot
echo "plot $funcion">>aux.gplot

cat aux.gplot|gnuplot
fim $fgif