#!/bin/bash
echo "$$"
if(( ${VARGLOBINDICE} < ${VARGLOBINDICEMAX} )) ; then
	(( VARGLOBINDICE=${VARGLOBINDICE}+1 ))
	./figlio.sh
fi
		
