#!/bin/bash
let listnum=[]
for i in {0..1999}
    do
        let listnum[$i]=$(echo $RANDOM)
    done

