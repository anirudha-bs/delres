#!/bin/sh

if [ `whoami` != 'root' ]
then
echo "This script must be run as root."
exit 1;
fi
echo "Do you really want to uninstall?"
echo "Type y for yes and n for no"
read var
if [ "$var" = "y" ]
then
loc=$(pwd)
cd /bin
rm res rmr
echo "Uninstalled successfully"
else
exit 0;
fi
