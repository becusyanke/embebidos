#!/bin/bash

gpios=( 17 18 27 22 23 24 25 )

ini_gpios() {
	for i in ${gpios[*]}
	do
		if [ ! -d /sys/class/gpio/gpio$i ]; then
		echo "$i" > /sys/class/gpio/export
		fi

	echo "out" > /sys/class/gpio/gpio$i/direction
	done
}

exit_gpios() {
	for i in ${gpios[*]}
	do
		if [ -d /sys/class/gpio$i ]; then
		echo "$i" > /sys/class/gpio/unexport
		fi
	done
}

begin_led() {
	for i in ${gpios[*]}
	do
		echo "1" > /sys/class/gpio/gpio$i/value
		sleep 2
		echo "0" > /sys/class/gpio/gpio$i/value
	done
}



ini_gpios
begin_led

exit 0
