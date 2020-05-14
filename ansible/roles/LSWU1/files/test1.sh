#!/bin/bash
#a=` ssh  -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.42 "cd /var/log/sonus/sbx/evlog ;cat  1000004.SYS| grep -w \".RTM: Switchover processing complete for all subsystems\" | awk -Fi\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'" `

file=`ssh -t  -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.42 "ls -lrtha /var/log/sonus/sbx/evlog/*.SYS | tail -1"`
b=`echo $file | awk -F "evlog/" '{print $2}'`
echo "$b"> t1.txt

a=$b
a=`echo $a | awk -F" " '{ print \$3}' | tr -s " " | awk -F: '{print \$1}'`
echo $a

b=` ssh  -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.42 "cd /var/log/sonus/sbx/evlog ;cat  1000004.SYS| grep -w \".SMA: Redundancy: System redundancy group has full redundancy protection\" | awk -Fi\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'" `
#echo $b
b=`echo $b | awk -F" " '{ print \$3}' | tr -s " " | awk -F: '{print \$1}'`
#echo $b
echo "sync time after switchback" 
#awk -v a="$a" -v b="$b" 'BEGIN {printf "%.3f\n",(b-a)}'
#echo switchback time : 
awk -v a="$a" -v b="$b" 'BEGIN {printf "%.3f\n",(b-a)}' 
