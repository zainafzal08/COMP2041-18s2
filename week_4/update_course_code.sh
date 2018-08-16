#!/bin/bash

for file in "$@";
do
  find -f $file > temp
  while read line;
  do
    sed -i 's/COMP2041/COMP2042/g' "$file" > "$file.tmp"
  done < temp
done
