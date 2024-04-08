#!/bin/bash

if [ -z "$1" ]; then
    echo "Необходимо указать параметр N"
    exit 1
fi

N=$1
array=()
step=0

while true; do
    array+=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")

    ((step++))

    if (( ${#array[@]} > N )); then
        echo "Размер массива превысил $N"
        exit 0
    fi

    if ((step % 100000 == 0)); then
        echo "Step $step: Array size is ${#array[@]}"
    fi
done

