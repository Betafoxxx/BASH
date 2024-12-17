#!/bin/bash

Counter=0
Var=0

while read VarA VarB VarC VarD; do
	if (( ${Var} != ${VarC} )) ; then
		if (( ${Counter} != 0 )) ; then
			echo "${Var} ${Counter}"
			Counter=0
		fi
	fi
	Var=${VarC}
	((Counter=${Counter}+1))
done
echo "${Var} ${Counter}"
