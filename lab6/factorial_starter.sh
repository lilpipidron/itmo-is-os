#!/bin/bash

n=3000
for ((i = 1; i <= 10; i++)); do
	/usr/bin/time -f "Время выполнения: %E" ./factorial.sh "$n" >>factorial_results_"$i".txt
done
