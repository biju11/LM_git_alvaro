#!/bin/bash
for i in 1 2 3 4 5 6
    do
        xcalc &
    done
sleep 5
killall xcalc
xeyes
echo "hola paco"