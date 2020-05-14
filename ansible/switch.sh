#!/bin/sh

# This shell script will collect sbx cli statistics until the spawned process is killed.

        spawn bash
#       sleep 18
        send "/opt/sonus/sbx/tailf/bin/confd_cli -uadmin\n";
        expect ">"
        send "request system admin vsbcSystem switchover\n";
        expect ">"
        send "yes\n";
        expect ">"
