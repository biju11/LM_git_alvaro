#!/bin/bash
#0 es la entrada estandard
#1 es la salida estandard
#2 es la salida de error
#estos son los descriptores por defecto
#exec < filetxt lee desde archivo
#exec > escribe en archivo


cat /etc/passwd | cut -f1 -d: > /tmp/usuarios.txt
exec < /tmp/usuarios.txt
read u
while [ "$u" ]
    do
        echo "$u esta registrado"
        read u
    done
exec<&-