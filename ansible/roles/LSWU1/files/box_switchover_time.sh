#!/bin/bash
#ssh  -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.42 "cd /var/log/sonus/sbx/evlog ;cat  1000002.SYS| grep -w \".NRS: Got AMF deactivate command\" |awk -F\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'"
a=` ssh  -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key root@10.34.224.42 "cd /var/log/sonus/sbx/evlog ;cat  1000002.SYS| grep -w \".NRS: Got AMF deactivate command\" | awk -Fi\" \" '{ print \$3}' | tr -s \" \" | awk -F: '{print \$1}'" `
#echo $a
a=`echo $a | awk -F" " '{ print \$3}' | tr -s " " | awk -F: '{print \$1}'`
echo $a



