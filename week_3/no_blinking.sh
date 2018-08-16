#!/bin/bash

for f in *.html; do
	r=$(egrep '<blink>' $f)
	if [ -z $r ]; then
		mv "$f" "$f.bad"
	fi
done