#!/bin/bash

n=20
for ((i = 1; i <= 20; i++)); do
	/usr/bin/time -f "%E" -o tmp.txt ./fileworker.sh "$i"
  tail -n 1 tmp.txt >> fileworker_result_1.txt
  echo "done: "$i" "
done
