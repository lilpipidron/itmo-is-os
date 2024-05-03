#!/usr/bin/bash

file_size=$1
num_files=$2
num_values=$((file_size / 4))

for ((i = 1; i <= num_files; i++)); do
	filename="file_$i.txt"
	for ((j = 1; j <= num_values; j++)); do
		echo $((RANDOM % 100)) >>"$filename"
	done
done
