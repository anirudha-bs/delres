#!/bin/sh

pd=$(pwd)
cd ~/.local/share/Trash/log
loc=$(cat $1.log)
cd ~/.local/share/Trash/files
mv $1 $loc
if [ $? -eq 0 ]
then
echo "Restored"
rm ~/.local/share/Trash/log/$1.log
else
echo "Error"
fi
cd $pd
