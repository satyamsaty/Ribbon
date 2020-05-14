#!/bin/sh

# This shell script will collect sbx cli statistics until the spawned process is killed.

        spawn bash
#       sleep 18
        send "/opt/sonus/sbx/tailf/bin/confd_cli -uadmin\n";
        expect ">"
        send "request system ethernetPort packetAdmin vsbc1 pkt0 switchover\n";
        expect ">"
        send "yes\n";
        expect ">"
        send "show table system ethernetPort portMonitorStatus\n";
        expect ">"
#        send "request system ethernetPort packetAdmin vsbc1 pkt1 switchover\n";
#        expect ">"
#        send "yes\n";
#        expect ">"
#        send "show table system ethernetPort portMonitorStatus\n";
#        expect ">"
#        send "request system ethernetPort packetAdmin vsbc1 pkt1 switchover\n";
#        expect ">"
#        send "yes\n";
#        expect ">"
#        send "show table system ethernetPort portMonitorStatus\n";
#        expect ">"



