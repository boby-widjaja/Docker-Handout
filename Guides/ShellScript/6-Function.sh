#!/bin/bash

#Function berfungsi seperti di kebanyakan programming language, yaitu untuk mensegmentasi sederetan procedure / sub routine.
#function pada shell script bisa ditulis dalam 2 macam syntax

#POSIX syntax (Portable Operating System Interface). Syntax ini compatible dengan shell lain.
greeting(){
    echo "Hello World in POSIX"
}
greeting

#function keyword syntax. Syntax ini adalah extension dari bash dan tidak didukung oleh semua macam shell
function say_hello(){
    echo "Hello World in function keyword"
}
say_hello

#Note: nama function di sini ditulis dalam snake_case

#Parameter tidak di definisikan dalam shellscript dan argument tidak ditulis dalam ()
call_name(){
    echo "Calling $1"
}
call_name Ben

add() {
    echo "$1 + $2 = $(($1 + $2))"
}
add 10 20

print_args() {
    echo "Parameter pertama : $1"
    echo "Semua parameter   : $@"
    echo "Jumlah parameter  : $#"
}
print_args apple orange banana

#Function pada shell tidak bisa mengembalikan nilai (tidak bisa return value).
#return keyword pada shell hanya berfungsi sebagai jump statement untuk terminate process function.
#function bisa di terminate dengan exit status 0 atau 1
# 0: Berhasil (Success)                                 
# 1: Gagal (General error)
# 2–255: Berbagai jenis error atau status khusus, tergantung program

control_outcome(){
    if (( $1 > 0 ))
    then
        echo YES
        return 0
    fi
    echo NO
    return 1
}

control_outcome 3
echo $?

control_outcome -1
echo $?


#Mengembalikan nilai harus dilakukan dengan trick menangkap hasil echo secara klasik
get_name() {
    echo "Felix"
}

NAME=$(get_name)
echo "Namanya: $NAME"


#Untuk membuat local variable di dalam function, kita harus menggunakan syntax local.
#Kalau tidak menggunakan syntax local, maka variablenya akan jadi global variable.
name="Alice"

change() {
    local name="David"
    echo "$name"
}
change

echo "$name"