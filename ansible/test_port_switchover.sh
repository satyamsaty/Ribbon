#!/bin/bash
file=`ssh  -o  "StrictHostKeyChecking no" -p 2024 -i $HOME/ats_repos/lib/perl/SonusQA/cloud_ats.key root@$1 "ls -lrtha /var/log/sonus/sbx/evlog/*.SYS | tail -1"`
#echo "\n\n\nFile value is $file\n\n\n"
b=`echo $file | awk -F "evlog/" '{print $2}' | awk -F "SYS" '{print $1"SYS"}'`
#echo "File is : $b"

#a=` ssh -o   "StrictHostKeyChecking no" -p 2024 -i /home/ansible/cloud_ats.key root@$1 "cd /var/log/sonus/sbx/evlog ;cat $b| grep -w \".NRS: Got AMF deactivate command\" | awk -F\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'" `
a=` ssh -o   "StrictHostKeyChecking no" -p 2024 -i $HOME/ats_repos/lib/perl/SonusQA/cloud_ats.key root@$1 "cd /var/log/sonus/sbx/evlog ;cat $b| grep -w \".NRS: Send GARP for LIFs on Packet port\"" `
#echo "\n\n\nA value is $a\n\n\n" 
a=`echo $a | awk -F" " '{ print \$3}' | tr -s " " | awk -F: '{print \$1}'`
#echo "\n\n\n\n A value is $a\n\n\n\n" 


#file=`ssh  -o  "StrictHostKeyChecking no" -p 2024 -i /home/ansible/cloud_ats.key root@$2 "ls -lrtha /var/log/sonus/sbx/evlog/*.SYS | tail -1"`
##echo "FILE is : $file ENDHERE\n"
#d=`echo $file | awk -F "evlog/" '{print $2}' | awk -F "SYS" '{print $1"SYS"}'`
##echo "File is isisisis : $d"
#
#
#c=` ssh   -o  "StrictHostKeyChecking=no" -p 2024 -i /home/ansible/cloud_ats.key root@$2 "cd /var/log/sonus/sbx/evlog ;cat $d| grep -w \".RTM: Switchover processing complete for all subsystems\" | awk -Fi\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'" `
##echo $c
#c=`echo $c | awk -F" " '{ print \$3}' | tr -s " " | awk -F: '{print \$1}'`
##echo $c
#
#echo "switchover time for sync : "
#awk -v a="$a" -v b="$c" 'BEGIN {printf "%.3f\n",(b-a)}'



file=`ssh  -o  "StrictHostKeyChecking no" -p 2024 -i $HOME/ats_repos/lib/perl/SonusQA/cloud_ats.key root@$1 "ls -lrtha /var/log/sonus/sbx/evlog/*.SYS | tail -1"`
#echo "\n\n\nFile value is $file\n\n\n"
d=`echo $file | awk -F "evlog/" '{print $2}' | awk -F "SYS" '{print $1"SYS"}'`
#echo "File is : $d"

#a=` ssh -o   "StrictHostKeyChecking no" -p 2024 -i /home/ansible/cloud_ats.key root@$1 "cd /var/log/sonus/sbx/evlog ;cat $b| grep -w \".NRS: Got AMF deactivate command\" | awk -F\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'" `
c=` ssh -o   "StrictHostKeyChecking no" -p 2024 -i $HOME/ats_repos/lib/perl/SonusQA/cloud_ats.key root@$1 "cd /var/log/sonus/sbx/evlog ;cat $d| grep -w \".NRS: Processing port send GARP event\"" `
#echo "\n\n\nC value is $c\n\n\n"
c=`echo $c | awk -F" " '{ print \$3}' | tr -s " " | awk -F: '{print \$1}'`
#echo "\n\n\n\n C value is $c\n\n\n\n"



echo "switchover time for sync : "
awk -v a="$a" -v b="$c" 'BEGIN {printf "%.3f\n",(b-a)}'

