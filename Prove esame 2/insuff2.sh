#!/bin/bash

while read nome cognome mat voto ; do
	if [[ ${voto} < 18 ]] ; then
		LINES='grep ${matricola} RisultatiProvaPratica.txt | wc -l'
		if[[ ${LINES} == 0 ]] ; then
			echo ${mat} ${nome} ${cognome} ${voto}
		fi
	fi
done < RisultatiProvaPratica2.txt | sort -k 3
