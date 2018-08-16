#!/bin/bash

hour=`date | cut -d" " -f5 | cut -d":" -f1`
if [ $hour -ge 9 ] && [ $hour -le 17 ]; then
  echo "YES"
  exit 1
else
  echo "NO"
  exit 0
fi
