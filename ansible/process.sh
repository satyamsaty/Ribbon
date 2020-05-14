#!/bin/bash
ssh  -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key root@$1 ' cd /var/log/sonus/sbx/evlog ; tail -f "$(ls -a1rt *.SYS | tail -n 1)" | while read LOGLINE
do
  [[ "${LOGLINE}" == *"Redundancy: System redundancy group has full redundancy protection"* ]] && pkill -P $$ tail
done'




