#!/usr/bin/bash

filename="file_$1.txt"
while read -r value; do
	new_value=$((value * 2))
	echo "$new_value" >>"trash.txt"
done <"$filename"
