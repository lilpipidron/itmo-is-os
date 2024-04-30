#!/bin/bash

factorials() {
	local n=$1
	local result=1
	for ((i = 1; i <= n; i++)); do
		result=$((result * i))
	done
	echo "$result"
}

calculate_factorial() {
	local n=$1
	local result=1
	for ((i = 1; i <= n; i++)); do
		result=$((result * i))
	done
	echo "Факториал числа $n равен $result"
}

export -f calculate_factorial

seq "$1" | parallel -j 0 calculate_factorial
