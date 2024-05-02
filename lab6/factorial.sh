#!/bin/bash

factorial() {
	local n=$1
	local result=1
	for ((i = 1; i <= n; i++)); do
		result=$((result * i))
	done
	echo "$result"
}


for ((i = 1; i <= $1; i++)); do
	echo "Факториал числа $i равен $(factorial "$i")"
done
