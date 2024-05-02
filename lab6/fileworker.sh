#!/usr/bin/bash

num_files=$2

for ((i = 1; i <= num_files; i++)); do
	filename="file_$i.txt"
	while read -r value; do
		new_value=$((value * 2))
		echo "$new_value" >>"$filename"
	done <"$filename"
done
