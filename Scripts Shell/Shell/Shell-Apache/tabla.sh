#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<html><head></head><body>"
echo "<table border=2><tr><th>X</th><th>x²</th><th>x³</th><th>PAR/IMPAR</th></tr>"
for i in {0..200}
do
    let cuadrado=$i*$i
    let cubo=$i*$i*$i
    let resto=$i%2
    if [ $resto -eq 0 ]
        then
            echo "<tr><td>$i</td><td>$cuadrado</td><td>$cubo</td><td>PAR</td></tr>"
        else
            echo "<tr><td>$i</td><td>$cuadrado</td><td>$cubo</td><td>IMPAR</td></tr>"
    fi
done
echo "</table></body></html>"