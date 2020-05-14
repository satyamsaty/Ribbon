#!/bin/bash
ssh  -o  "stricthostkeychecking=no" -p 2024 -i /home/ansible/cloud_ats.key root@$1 ' cd /var/log/sonus/sbx/coredump ;ls -alrt | grep -w core   '

  
