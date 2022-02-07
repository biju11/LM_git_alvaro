#!/bin/bash
    xeyes &
    xcalc &
    sleep 10

    killall xeyes
    killall xcalc

    echo "adios paco nos vemo"