#!/bin/bash

gpios=( 17 18 27 22 23 24 25 )

imprimir1_gpios() {
	let "num_ele = 7"
	echo "Datos de la funcion 1"
	for (( i = 0; $i < $num_ele; i=$i+1 ))
	do
		echo "${gpios[i]}"
	done
}

imprimir2_gpios() {
	echo "Datos de la funcion 2"
	for(( i = 0; $i < ${#gpios[*]}; i = $i + 1))
	do
		echo "${gpios[i]}"
	done
}

imprimir3_gpios() {
	echo "Datos de la funcion 3"
	for i in ${gpios[*]}
	do
		echo "$i"
	done
}

echo "Los elementos del arreglo son: ${gpios[*]}"
echo "El numero de elementos del arreglo son ${#gpios[*]}"


imprimir1_gpios
imprimir2_gpios
imprimir3_gpios

exit 0
