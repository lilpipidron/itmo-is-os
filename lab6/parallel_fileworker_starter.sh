#!/usr/bin/bash

n=20
for ((i = 1; i <= 10; i++)); do
	/usr/bin/time -f "%E" -o tmp.txt ./paralel_fileworker.sh "$n"
  tail -n 1 tmp.txt >> paralle_fileworker_result.txt
done
