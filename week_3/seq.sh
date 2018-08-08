#!/bin/sh

if [ $# -eq 1 ]; then 
	first=1
	inc=1
	last=$1
fi 
if [ $# -eq 2 ]; then 
	first=$1
	inc=1
	last=$2
fi
if [ $# -eq 3 ]; then 
	first=$1
	inc=$2
	last=$3
fi

i=$first
while [ $i -lt $last ]; do
	echo $i
	i=$(expr $i + $inc)
done
echo $last