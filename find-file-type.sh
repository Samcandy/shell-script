#!/bin/bash

filename=$1

#ls $(find . | grep "$filename")

myfind=`find . -name "$filename"`


if [[ -z "$myfind" ]]
then
        echo "filename is non exist"
else
        mycut=`ll $myfind | awk '{print $1}' | uniq | xargs | cut -d " " -f2 | cut -c1`
        case $mycut in
        d)
                echo "filename is a directory"
                ;;
        -)
                echo "filename is a reguler file"
esac

fi
