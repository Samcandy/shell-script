!/bin/bash
# Create group 
groupadd mygroup

# Create 30 user and add group
for (( i=1; i<=30; i=i+1 ))
do
        echo "myuser`printf "%02d\n" $i`,qwer" >> user.txt
done

for line in $(cat ./user.txt)
do
 user=$( echo "$line" | cut -d , -f 1 )
 pass=$( echo "$line" | cut -d , -f 2 )

 adduser $user
 echo "$pass" | passwd --stdin $user > /dev/null
 usermod -g mygroup $user
done

rm user.txt
