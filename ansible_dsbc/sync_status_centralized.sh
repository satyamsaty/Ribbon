#!/bin/bash

a=0

while [ $a -le 3 ]

do
   a=`curl -kisu 'admin:admin' -X GET https://$1/api/operational/system/syncStatus/ | grep "syncCompleted" | wc -l`
#   echo $a
   sleep 2
   if [[ "$a" == '3' ]]; then
       break
   fi

done

echo "Both the  servers are in Sync"
~

