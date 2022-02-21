#!/bin/bash
echo $QUERY_STRING|cut -f2 -d=
func=$(echo $QUERY_STRING|cut -f2 -d=)
echo "set terminal gif" >> /tmp/outp.gplot
echo "set output '/var/www/html/grafica.gif'">>/tmp/outp.gplot
echo "plot $funcion" >> outp.gplot
cat /tmp/outp.gplot|gnuplot
echo "Content-type: text/html"
echo ""
echo "<h1>Bienvenido al Generador de gráficas de funciones</h1>"
echo "<p>Introduzca en la URL un parámetro</p>"
echo "<meta http-equiv='refresh' content=0;url=http://localhost/grafica.gif/>"