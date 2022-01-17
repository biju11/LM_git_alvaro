#!/bin/bash
crea(){
    for i in {0..49}
    do
        num[$i]=$RANDOM
        echo "${num[$i]}"
    done
    let tam=${#num[@]}

}

muestra(){
    if [ $tam -ne 0 ]
        then   
            for j in {0..$tam}
            do
                echo "${num[$j]}"
            done
        else
            echo "no hay lista para mostrar"
    fi
}

rotaiz(){
    if [ $tam -ne 0 ]
        then
            let a=${#num[@]}-2
            s=${num[0]}
            for j in {0..$a}
                do
                    let t=$j+1
                    num[$j]=${num[$t]}
                done
        num[$t]=$s
        else
            echo "utilice carga antes"
    fi

}


rotader(){
    if [ $tam -ne 0 ]
        then
            a=${lista[49]}
            for i in {0..48}
                do
                    let t=49-$i
                    let r=$t-1
                    lista[$i]=${lista[$r]}
                done
                lista[$t]=$a
        else
            echo "introduzca una lista antes"
    fi
}

    




