#!/usr/bin/bash

n=20
for ((i = 1; i <= 10; i++)); do
	/usr/bin/time -f "%E" -o tmp.txt ./parallel_fileworker.sh "$i"
  tail -n 1 tmp.txt >> parallel_fileworker_result_24.txt
  echo "done: %i"
done
