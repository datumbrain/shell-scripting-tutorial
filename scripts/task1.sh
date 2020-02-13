#!/bin/bash

if [ $# == 2 ]; then
	find $2 -name $1
elif [ $# == 1 ]; then
	find . -name $1
else
	echo "Inavlid number of arguments"
fi

