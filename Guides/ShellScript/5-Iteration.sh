#!/bin/bash

#Untuk classic for loop iteration, kurang lebih seperti di bawah ini syntaxnya

for index in 1 2 3 4
do
    echo "Print Index $index"
done

echo

for FRUIT in "Grape" "Orange" "Apple"
do
    echo "Nama buah: $FRUIT"
done

echo

#Untuk array for each, kurang lebih begini syntaxnya

COLORS=("Red" "Green" "Blue")
for COLOR in "${COLORS[@]}"
do
    echo "Nama warna: $COLOR"
done

echo

#shell bisa mengenali new line sebagai separator di dalam string dan string akan diiterate dengan separator ketimbang pecah setiap characters.

COLORS=$'Red\nGreen\nBlue'
for COLOR in $COLORS
do
    echo "Nama warna: $COLOR"
done

echo

declare -i COUNT=0
declare -i MAXIMUM=10
while [ $COUNT -le $MAXIMUM ]
do
    echo "This is the count: $COUNT"
    COUNT=$COUNT+1
done