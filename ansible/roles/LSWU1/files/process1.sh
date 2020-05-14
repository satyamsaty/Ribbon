#!/bin/bash
 tail -f "$(ls -a1rt *.SYS | tail -n 1)" | while read LOGLINE
do
  [[ "${LOGLINE}" == *"Redundancy: System redundancy group has full redundancy protection"* ]] && pkill -P $$ tail
done




