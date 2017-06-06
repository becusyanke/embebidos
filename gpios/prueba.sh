#!/bin/bash

	gpios=(17 18 27 22 23 24 25)

	for i in ${gpios[*]}
	do

		if [ -d /sys/class/gpio/gpio$i ]; then
			echo "Existo $i"
		else
			echo "No existo $i"
		fi

	done

