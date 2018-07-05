#!/bin/bash
FIFO=$1

if [ ! -e $FIFO ]
then
	mkfifo $FIFO
	echo "everything is ok"
	
elif [ ! -p $FIFO ]
then
	exit 1	
fi
while read line
do
	if [ "$line" == "quit" ]
	then 
		echo "$line" > $FIFO
		exit 0
	else 
		echo "$line" > $FIFO
	fi		
done
