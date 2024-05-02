#!/usr/bin/bash

n=3000
for ((i = 1; i <= 10; i++)); do
	/usr/bin/time -f "Время выполнения: %E" ./parallel_factorial.sh "$n" >>parallel_factorial_results_"$i".txt
done
