#!/bin/bash

groupadd mygroup
pw=`openssl rand -base64 6`

for (( i=1; i<=30; i=i+1 ))
do
        echo "myuser`printf "%02d\n" $i`,$pw" >> user.txt
done


for line in $(cat ./user.txt)
do
 user=$( echo "$line" | cut -d , -f 1 )
 pass=$( echo "$line" | cut -d , -f 2 )

 adduser $user
 echo "$user:$pass" | chpasswd
 usermod -g mygroup $user
done

rm user.txt
