#!/bin/bash

if [[ $# != 1 ]] ; then echo "coglione metti un numero" ; fi
if [[ $1 < 0 ]] ; then "coglione metti un numero maggiore di 0"
exit 1 ; fi
a=$1
for (( i = 0 ; $i < $a ; i++ )) ; do
	./discendent.sh $(( $a - 1 )) &
done

wait

echo "$a"

exit 0
