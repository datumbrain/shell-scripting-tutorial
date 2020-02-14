#!/bin/bash

string=~null
char=~null
stringInput=0
charInput=0

while getopts ":c:s:" opt; do
	case $opt in
	c)
		char=$OPTARG
		charInput=1
		;;
	s)
		string=$OPTARG
		stringInput=1
		;;
	\?)
		echo "Invalid flag -$OPTARG"; exit 1
		;;
	:)
		echo "-$OPTARG requires an argument"; exit 1
		;;
	esac
done

if [ $stringInput == 1 ]; then
	if [ $charInput == 0 ]; then
		echo $string
	else
		count=$((${#string}+4))
		s=$(printf "%-${count}s" "${char}")

		echo "${s// /${char}}"
		echo "${char} $string ${char}"
		echo "${s// /${char}}"
	fi
else
	echo "Error: no string was provided.."
fi

