#!/bin/bash

array=()
step=0

>report.log

while true; do
	array+=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")

	((step++))

	if ((step % 100000 == 0)); then
		echo "Step $step: Array size is ${#array[@]}" >>report.log
	fi
done
