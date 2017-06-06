#!/bin/bash

gpios=( 17 18 27 22 23 24 25 )

	for i in ${gpios[*]}
	do
		echo "$i" > /sys/class/gpio/export
		echo "out" > /sys/class/gpio/gpio$i/direction
	done

exit 0
