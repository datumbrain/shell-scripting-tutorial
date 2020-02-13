#!/bin/bash

count=3
for arg in $@ ; do
	count=$((1+$count+${#arg}))
done

s=$(printf "%-${count}s" "*")

echo "${s// /*}"
echo "* $@ *"
echo "${s// /*}"

