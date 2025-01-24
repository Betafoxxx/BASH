#!/bin/bash

IFS=$',\n'
SOMMA=0

while read uno due tre ; do
	((SOMMA=${SOMMA}+${due}))
	echo "${uno},${tre}
done < input1.txt
