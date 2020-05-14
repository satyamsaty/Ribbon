#!/bin/bash
echo "param 1 is $1\n"
echo "param 2 is $2\n"

if [ $1 == null ]
   then
echo "OPTION 2"
echo "ssh  -o  \"stricthostkeychecking no\" -p 2024 -i /home/ansible/cloud_ats.key root@$2 ' cd /var/log/sonus/sbx/evlog ;" 
fi

if [ $2 == null ]
   then
echo "OPTION 1"
echo "ssh  -o  \"stricthostkeychecking no\" -p 2024 -i /home/ansible/cloud_ats.key root@$1 ' cd /var/log/sonus/sbx/evlog ;" 
fi


