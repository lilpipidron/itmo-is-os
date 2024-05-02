#!/bin/bash

n=20
for ((i = 1; i <= 10; i++)); do
	/usr/bin/time -f "Время выполнения: %E" ./fileworker_sh "$n" >>factorial_results_"$i".txt
done
