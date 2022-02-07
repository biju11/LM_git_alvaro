#!/bin/bash
read -p "Introduzca el nombre de la Base de Datos: " bd
read -p "como se llama la tabla?: " tabla

echo "CREATE DATABASE $bd;" > bdato.sql
echo "USE $bd;">>bdato.sql
echo "CREATE TABLE $tabla(i int, n int);">> bdato.sql
for x in {1..10000}
    do
        let a=$RANDOM
        echo "insert into $tabla values ($x,$a);">>bdato.sql
    done
cat bdato.sql | mysql -u root -p