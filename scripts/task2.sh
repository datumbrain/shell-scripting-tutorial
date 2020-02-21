#!/bin/bash

echo "Creating directory task2.."
mkdir task2
cd task2
echo "Crating files f1, f2 & f3.."
touch f1 f2 f3
cd ..
echo "Creating directory task2_temp.."
mkdir task2_temp
echo "Copying files from task2 to task2_temp.."
cp task2/* task2_temp/
echo "Swapping folder names.."
mv task2 task2_tmp
mv task2_temp task2
mv task2_tmp task2_temp

