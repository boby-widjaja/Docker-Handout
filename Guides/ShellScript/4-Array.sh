#!/bin/bash

#Indexed Array

COLORS=("Merah" "Hijau" "Biru")
echo "${COLORS[1]}"

#Associative Array

#Harus di deklarasi terlebih dahulu
declare -A COUNTRY
COUNTRY[us]="United States"
COUNTRY[jp]="Japan"
COUNTRY[id]="Indonesia"

echo "${COUNTRY[jp]}"

#Kita bisa menggunakan deklarasi print untuk melihat seluruh isi dari array
declare -p COUNTRY
echo "$COUNTRY"

#Kita juga membuat indexed array berdasarkan file dengan menggunakan mapfile
#Secara default separatornya adalah new line dari isi text

FILES=/mnt/c/Repository/Docker-Handout/Guides/ShellScript/Target/namesSU.txt
mapfile -t GIRLS < $FILES
echo "${GIRLS[0]}"
echo "${GIRLS[1]}"

#Kalau mau semua white space menjadi separator
SEGMENTS=($(< $FILES))
echo "${SEGMENTS[1]}"
echo "${SEGMENTS[3]}"