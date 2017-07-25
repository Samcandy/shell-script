#!/bin/bash

update=`sudo apt-get update`
eject=`sudo eject /dev/sdb`
polling=`source polling.sh`

read -p "Please input you name in 3 seconds: " -t 3 name

echo "Hello ${name} ,Welcome Bash"

echo "You will update you computer"
sleep 5
echo "Let's update"

echo "$update"
if [ $? ]
then 
    echo 'You success update' ;sleep 2
else
    echo 'Fail update ' ;sleep 2
fi

echo "Will be umount USB" ;sleep 2

echo "$eject"
if [ $? ]
then 
    echo 'You success umount USB';sleep 2
else
    echo 'Fail umount USB,You will manual operation umount';sleep 2
fi

echo "列出當前目錄檔案的副檔名" ;sleep 2
echo "$polling"
if [ $? ]
then
    echo 'You success umount USB';sleep 2
else
    echo 'Fail umount USB,You will manual operation umount';sleep 2
fi
