#!/bin/bash
#chmod /var/www/html
#chmod /var/www/cgi-bin
f=$(echo $QUERY_STRING|cut -f2 -d=)
echo "set terminal gif">hola.txt
echo "set output 'grafica.gif'">>hola.txt
echo "plot $f">>hola.txt
cat hola.txt|gnuplot
cp grafica.gif /var/www/html
echo "content-type: text/html"
echo ""
echo $f
echo "<center><img src=http://localhost/grafica.gif></center>"