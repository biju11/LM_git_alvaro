#!/bin/bash
ls /bin > testo.txt
exec 17<testo.txt
read -u 17 linea
echo "$linea: $(md5sum $linea)"