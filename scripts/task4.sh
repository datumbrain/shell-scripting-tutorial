#!/bin/bash

date_var=($(date))
echo "#!/bin/bash" > ~/.dotfile
echo PS1="[${date_var[3]}] $(pwd) >" >> ~/.dotfile
chmod +x ~/.dotfile
echo "if [ -e \"~/.dotfile\" ]; then" >> ~/.bashrc
echo "    ~/.dotfile" >> ~/.bashrc
echo  "fi" >> ~/.bashrc

