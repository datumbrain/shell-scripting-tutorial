#!/bin/bash

string=""
char=""
valid=1

if [ $# == 2 ]; then
	if [ $1 == "-s" ]; then
		string=$2
	else
		valid=0
	fi
fi
if [ $# == 4 ]; then
	if [ $1 == "-s" ]; then
		string=$2
		if [ $3 == "-c" ]; then
			char=$4
		else
			valid=0
		fi
	elif [ $1 == "-c" ]; then
		char=$2
		if [ $3 == "-s" ]; then
			string=$4
		else
			valid=0
		fi
	else
		valid=0
	fi
fi

if [ $valid == 1 ]; then
	if [ $# == 2 ]; then
		echo $string
	else
		count=$((${#string}+4))
		s=$(printf "%-${count}s" "${char}")

		echo "${s// /${char}}"
		echo "${char} $string ${char}"
		echo "${s// /${char}}"
	fi
else
	echo "Invalid arguments.."
fi

