#!/bin/bash

#Kita akan melakukan error handling pada shell. Error handling sendiri adalah tindakan untuk melakukan:
#Mengenali dan meng-contingency error.

#Kita akan mencoba menjalankan command yang error dan ditolak oleh bash, yaitu membuat directory dimana nama directory sudah ada.
mkdir Target

# echo $? ini akan 1
# echo $? setelah itu akan kembali ke 0

#mkdir: cannot create directory ‘Target’: File exists
#dan outputnya exist status 1, itu artinya ada error
# 0: Berhasil (Success)                                 
# 1: Gagal (General error)
# 2–255: Berbagai jenis error atau status khusus, tergantung program

if [ $? -ne 0 ]; 
then
    echo "Gagal membuat folder"
fi

#atau bisa langsung juga
if mkdir Target; 
then
    echo "Berhasil"
else
    echo "Gagal"
fi

#kita bisa meneruskan stdout ke stderr dengan command >&2
#Jalankan command: ./7-ErrorHandling.sh > Target/errorTest.txt
echo "Output biasa" #akan masuk ke errorTest.txt
echo "Output kedua" >&2 #di warning di terminal dan tidak akan diteruskan ke output errorText.txt

#Kita bisa membuat function throw error sendiri dari hal-hal yang sudah pernah kita pelajari:
throw() {
    echo "ERROR: $1" >&2
    exit 1
}

#Ini akan menghentikan jalannya script
#mkdir Target || throw "Tidak bisa membuat folder"

#kita juga bisa menggunakan set e
#set -e adalah salah satu opsi Bash yang digunakan agar script langsung berhenti (exit) ketika ada perintah 
#yang gagal (mengembalikan exit status selain 0).

set -e

echo "Mulai"
mkdir Target
echo "Proses selesai"