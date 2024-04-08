#!/bin/bash

array=()
step=0

>report2.log

while true; do
	array+=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")

	((step++))

	if ((step % 100000 == 0)); then
		echo "Step $step: Array size is ${#array[@]}" >>report2.log
	fi
done
