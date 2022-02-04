#!/bin/bash
url=($echo https://gist.githubusercontent.com/jsdario/6d6c69398cb0c73111e49f1218960f79/raw/8d4fc4548d437e2a7203a5aeeace5477f598827d/el_quijote.txt)
wget $url
mkdir libro
mv el_quijote.txt ./libro/el_quijote.txt
npalabras=$(wc -w ./libro/el_quijote.txt)
nlineas=$(wc -l ./libro/el_quijote.txt)
nbytes=$(wc -c ./libro/el_quijote.txt)

echo "El quijote tiene $nbytes caracteres"
echo "El quijote tiene $npalabras palabras"
echo "El quijote tiene $nlineas renglones"