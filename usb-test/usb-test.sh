#!/bin/bash

#Test the usb if input usb     

usb=`lsusb`
usb_len=`expr length "$usb"`
#echo $usb_len 
while :
do
    usb_a=`lsusb`
    usb_alen=`expr length "$usb_a"`
#   echo $usb_alen
    if [ $usb_len = $usb_alen ] 
    then
        echo "No usb"
    else
        echo "Hello usb"
        source test.sh
    fi
    sleep 1
done


#if 
#then
#else
#fi
