#!/usr/bin/bash

n=1000
for ((i = 1; i <= 10; i++)); do
	/usr/bin/time -f "%E" -o tmp.txt ./parallel_factorial.sh "$n" 
  tail -n 1 tmp.txt >> parallel_factorial_result_1000_24.txt
done
