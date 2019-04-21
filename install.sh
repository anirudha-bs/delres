#!/bin/sh

if [ `whoami` != 'root' ]
then
echo "This script must be run as root."
exit 1;
fi
echo "Installation started...."
mkdir ~/.local/share/Trash/log
chmod +x rmr && chmod +x res
cp rmr /bin && cp res /bin
if [ $? -eq 0 ]
then
echo "Moved files"
echo "Installation complete."
else
echo "Error moving files to bin or permissions denied"
fi
