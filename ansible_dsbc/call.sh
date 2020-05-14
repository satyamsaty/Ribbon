#!/bin/sh

# This shell script will collect sbx cli statistics until the spawned process is killed.

        spawn bash
#       sleep 18
        send "/opt/sonus/sbx/tailf/bin/confd_cli -uadmin\n";
        expect ">"
        send "show status global callCountStatus\n";
        expect ">"
