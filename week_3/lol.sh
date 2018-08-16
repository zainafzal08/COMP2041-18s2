#!/bin/sh
while read line
do
	line=$(echo $line | cut -d" " -f1)
    mark=$(grep $line $2 | cut -d" " -f2)
    echo $mark
done < $1
done

