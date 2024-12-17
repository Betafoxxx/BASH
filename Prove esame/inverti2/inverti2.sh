#!/bin/bash


NRows=${ cat txt.txt | wc -l }

while((${NRows} <= $#)) ; do
	./inverti2.sh &
	wait $!
	echo "arg ${NUM} is ${!NUM}"
	((NUM=${NUM}+1))
done
