#!/bin/bash

factorial() {
	local n=$1
	local result=1
	for ((i = 1; i <= n; i++)); do
		result=$((result * i))
	done
	echo "$result"
}

read -rp "Введите число N: " n

for ((i = 1; i <= n; i++)); do
	echo "Факториал числа $i равен $(factorial "$i")"
done
