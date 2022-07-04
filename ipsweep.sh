#!/bin/bash

if [ "$1" == "" ] 
then
echo "you for got to include first 3 octets of IP range"
echo "Syntax e.g:  ./ipsweep.sh 192.168.16"

else
for ip in `seq 1 254` ; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
