#!/bin/bash

#read digunakan untuk menerima input dari luar

echo Halo, siapa nama mu?
read NAME
echo Oke, ${NAME} kita akan mencoba shell script menerima input.
echo
JOB="Programmer"
echo "Apa pekerjaan mu? (Saat ini variable JOB isinya ${JOB})"
read JOB
echo "Oh jadi kamu adalah seorang ${JOB}."

MY_FILE=/mnt/c/Repository/Docker-Handout/Guides/ShellScript/Target/scarboroughFair.txt
echo Menganalisa file scarboroughFair:
echo
cat $MY_FILE
echo
JUMLAH_CHAR=$(wc -m < $MY_FILE)
JUMLAH_KATA=$(wc -w < $MY_FILE)
JUMLAH_BARIS=$(wc -l < $MY_FILE)
echo
echo -e "Jumlah characters: ${JUMLAH_CHAR}\nJumlah Kata: ${JUMLAH_KATA}\nJumlah Baris: ${JUMLAH_BARIS}\n"