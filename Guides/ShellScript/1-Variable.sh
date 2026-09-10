#!/bin/bash
#shebang atau hashbang, digunakan untuk menentukan interpreter yang akan digunakan untuk menjalankan script ini. 
#Dalam hal ini, kita menggunakan bash sebagai interpreter.
#Karena perbedaan shell atau environment yang menjalankan bisa berbeda, maka script bisa jadi jalannya berbeda,
#Dengan menggunakan shebang, kita memastikan bahwa script ini akan dijalankan dengan interpreter yang kita inginkan, yaitu bash.

# echo digunakan untuk print string yang diberikan padanya.
echo "Hello World!"

# cat atau concate digunakan untuk menggabungkan text pada multiple files, tapi jadinya bisa juga dimanfaatkan untuk print isi file.
# printf sendiri digunakan untuk mencetak teks dengan format yang terkontrol
cat Target/namesAC.txt
printf "\n"
cat /mnt/c/Repository/Docker-Handout/Guides/ShellScript/Target/namesDF.txt
printf "\n"
cat Target/namesGI.txt Target/namesJL.txt
printf "\n"

#enable interpretation, sebuah opsi yang bisa membuat echo mengenali escaping character.
echo -e "\tIt is a long established fact that a reader will be distracted by the\nreadable content of a page when looking at its layout. The point of\nusing Lorem Ipsum is that it has a more-or-less normal distribution\n"

#contoh membuat variable dan menggunakannya dalam interpolation
#convention pada variable menggunakan SCREAMING_CASE
PRODUCT="Body Pack Backpack"
COUNTRY="Indonesia"
echo $PRODUCT
echo "Product: $PRODUCT"
echo "Product ${PRODUCT} ini buatan ${COUNTRY}"

#Kalau mau terima input text ke dalam variable dari file.
NAMES_MO=$(cat /mnt/c/Repository/Docker-Handout/Guides/ShellScript/Target/namesMO.txt)
echo $NAMES_MO

NAMES_PR=$(cat /mnt/c/Repository/Docker-Handout/Guides/ShellScript/Target/namesPR.txt)
echo "$NAMES_MO, $NAMES_PR"

#Pada awalnya mendeklarasi variable harus dengan command declare, tapi sekarang bisa secara syntatic sugar tidak perlu lagi
#Tapi secara default variable tidak diterima dalam angka integer.

NUMBER_ONE=5+4
echo "$NUMBER_ONE"

declare -i NUMBER_TWO
NUMBER_TWO=5+6
echo "$NUMBER_TWO"

#Kita juga melakukannya tanpa menggunakan deklarasi integer
NUMBER_THREE=$((7+6))
echo "$NUMBER_THREE"

#Dengan declare kita juga bisa membuat nilai constant atau read only

declare -r PI=3.14
# PI=3.15 ini akan memberi peringatan
echo $PI

#Membuat semua jadi lower case
declare -l CUSTOMER
CUSTOMER="BrEnDan FrAser"
echo "$CUSTOMER"

#Membuat semua jadi upper case
declare -u SUPPLIER
SUPPLIER="Indofood"
echo "$SUPPLIER"

#ANSI-C Quoting feature khusus bash, ditulis dengan $'', sehingga kita bisa melakukan escaping character
SENTENCE=$'\tIni adalah contoh sebuah paragraph.\nDimana baris baru bisa terjadi.\nDan terjadi lagi.'
echo "$SENTENCE"

#sleep: adalah command sederhana untuk mem-pause atau menghentikan process sementara dalam kurun waktu tertentu.
echo "Mulai"
sleep 3
echo "Selesai"