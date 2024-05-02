#!/bin/bash

n=20
for ((i = 1; i <= 10; i++)); do
	/usr/bin/time -f "%E" -o tmp.txt ./fileworker_sh "$n"
  tail -n 1 tmp.txt >> fileworker_result.txt
done
