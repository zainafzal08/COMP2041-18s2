#!/bin/sh

for f in *.c; then 
	echo "$f includes:"
	egrep $f "^#include <.*>$" | sed 's/#include /    /g' | tr -d '<>'
