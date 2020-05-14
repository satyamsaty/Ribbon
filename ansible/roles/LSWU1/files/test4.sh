#!/bin/bash

file=`ssh  -o  "StrictHostKeyChecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.41 "ls -lrtha /var/log/sonus/sbx/evlog/*.SYS | tail -1"`
echo $file
b=`echo $file | awk -F "evlog/" '{print $2}' | awk -F "SYS" '{print $1"SYS"}'`
echo "File is : $b"

a=` ssh -o   "StrictHostKeyChecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.41 "cd /var/log/sonus/sbx/evlog ;cat $b| grep -w \".RTM: Switchover processing complete for all subsystems\" | awk -Fi\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'" `
echo $a 
a=`echo $a | awk -F" " '{ print \$3}' | tr -s " " | awk -F: '{print \$1}'`
echo $a 


file=`ssh  -o  "StrictHostKeyChecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.41 "ls -lrtha /var/log/sonus/sbx/evlog/*.SYS | tail -1"`
#echo "FILE is : $file ENDHERE\n"
d=`echo $file | awk -F "evlog/" '{print $2}' | awk -F "SYS" '{print $1"SYS"}'`
echo "File is isisisis : $d"


c=` ssh   -o  "StrictHostKeyChecking=no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.41 "cd /var/log/sonus/sbx/evlog ;cat $d| grep -w \".SMA: Redundancy: System redundancy group has full redundancy protection\" | awk -Fi\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'" `
echo $c
c=`echo $c | awk -F" " '{ print \$3}' | tr -s " " | awk -F: '{print \$1}'`
echo $c

echo "switchover time for sync : "
awk -v a="$a" -v b="$c" 'BEGIN {printf "%.3f\n",(b-a)}'

