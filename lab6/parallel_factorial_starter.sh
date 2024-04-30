#!/bin/bash


for ((n=1; n<=3000; n++)); do
    echo "Серия для N = $n" >> parallel_factorial_results.txt
    for ((i=1; i<=10; i++)); do
        echo "Запуск $i для N = $n" >> parallel_factorial_results.txt
        /usr/bin/time -f "Время выполнения: %E" ./parallel_factorial.sh $n >> parallel_factorial_results.txt
    done
done
