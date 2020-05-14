#!/bin/bash

#a=` ssh  -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.42 "cd /var/log/sonus/sbx/evlog ;cat $(ls -a1rt *.SYS | tail -n 1) | grep -w \".RTM: Switchover processing complete for all subsystems\" | awk -Fi\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'" `
#echo $a
ssh  -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.42 "cd /var/log/sonus/sbx/evlog ;cat $(ls -a1rt \*SYS\ | tail -n 1)" 
#echo $a
a=`echo $a | awk -F" " '{ print \$3}' | tr -s " " | awk -F: '{print \$1}'`

echo $a
