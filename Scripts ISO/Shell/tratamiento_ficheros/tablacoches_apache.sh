#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<html><head></head><body>"
echo "<table border=2><tr><th> Marca </th><th> URL </th></tr>"
exec 45<coches.txt
exec 44<pags.txt
read -u 45 a
read -u 44 b
while [ $a ]
do
    <td>$a</td><td><a href='$b'></a></td>
done
echo "</table></body></html>"