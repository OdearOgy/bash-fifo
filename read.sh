#!/bin/bash
FIFO=$1  
if [ ! -e $FIFO ] 
then
	exit 1
fi
while read line < $FIFO
do
	if [ "$line" == "quit" ]
	then	
		echo "$line"
		exit 0
	else
		echo "$line" 
	fi
done 
