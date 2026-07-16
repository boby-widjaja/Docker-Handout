#!/bin/bash

echo Kita akan mencoba menggunakan conditional pada script ini.
echo Ada berapa kata menurut mu di dalam text pancasila?
read WORD_GUESS

MY_FILE=/mnt/c/Repository/Docker-Handout/Guides/ShellScript/Target/pancasila.txt

#-e artinya operasi "exist"
if [ -e $MY_FILE ]
then
    echo File pancasila ditemukan
else
    echo File tidak ditemukan
fi

# -f → memastikan file konfigurasi atau data ada.
# -d → memastikan direktori ada.
# -e → memastikan suatu path ada tanpa peduli jenisnya.

JUMLAH_KATA=$(wc -w < $MY_FILE)

echo "Kamu menebak ${WORD_GUESS}, Jumlah kata di text Pancasila adalah ${JUMLAH_KATA}"

# | Operator | Arti                                                 |
# | -------- | ---------------------------------------------------- |
# | `-eq`    | equal (sama dengan)                                  |
# | `-ne`    | not equal (tidak sama dengan)                        |
# | `-gt`    | greater than (lebih besar dari)                      |
# | `-ge`    | greater than or equal (lebih besar atau sama dengan) |
# | `-lt`    | less than (lebih kecil dari)                         |
# | `-le`    | less than or equal (lebih kecil atau sama dengan)    |

# if [ $WORD_GUESS -eq $JUMLAH_KATA ]
# then
#     echo Tebakan anda tepat!
# elif [ $WORD_GUESS -ge $JUMLAH_KATA ]
# then
#     echo Tebakan anda lebih banyak dari seharusnya.
# else
#     echo Tebakan anda lebih sedikit dari seharusnya.
# fi

# | Operator | Arti                  |
# | -------- | --------------------- |
# | `==`     | sama dengan           |
# | `!=`     | tidak sama            |
# | `>`      | lebih besar           |
# | `>=`     | lebih besar atau sama |
# | `<`      | lebih kecil           |
# | `<=`     | lebih kecil atau sama |

if (( $WORD_GUESS == $JUMLAH_KATA ))
then
    echo Tebakan anda tepat!
elif (( $WORD_GUESS > $JUMLAH_KATA ))
then
    echo Tebakan anda lebih banyak dari seharusnya.
else
    echo Tebakan anda lebih sedikit dari seharusnya.
fi

echo -e "Pilih satu diantara minuman ini:\n1 Coca-cola\n2 Teh Botol\n3 Orange Juice\n"
read CHOICE

case $CHOICE in
1) echo Kamu dapat Coca-cola;;
2) echo Kamu dapat Teh Botol;;
3) echo Kamu dapat Orange Juice;;
*) echo "Tidak menerima input diluar 1 - 3"
esac
