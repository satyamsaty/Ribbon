#!/bin/bash
tail -f /var/log/sonus/lca/lca.log | while read LOGLINE
do
   [[ "${LOGLINE}" == *"SBC service is now running"* ]] && pkill -P $$ tail
done    



