#!/bin/bash

read -p "fichero a leer: " fich

let nlin=$(cat $fich|wc -l)
let i=0
lista=[]

while [ "$1" ]
 do
	lista[$i]=$1
	shift
	let i=$i+1
 done

let np=$i
let c=0

exec 14<$fich
read -u 14 linea

while [ $c -ne $nlin ]
 do
	let i=0
	while [ $i -ne $np ]
	 do
		let t=${lista[$i]}
		# echo "A:$t"
		let t=$t-1
		# echo $t
		if [ $c -eq $t ]
		 then
			echo "${lista[$i]}:$linea"
		 fi
		let i=$i+1
	 done
	read -u 14 linea
	let c=$c+1
 done
exec 14<&-


