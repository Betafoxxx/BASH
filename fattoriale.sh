#!/bin/bash

NUM=1
PROD=1
while (( ${NUM} <= $1 )) ; do
	(( PROD=${PROD}*${NUM} ))
	(( NUM=${NUM}+1 ))
done
echo "${PROD}"
