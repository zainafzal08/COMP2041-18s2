#!/bin/sh

for f in *.html; do
	r=$(egrep '<blink>' $f)
	if ! [ $r == "" ]; then
		mv "$f" "$f.bad"
	fi
done