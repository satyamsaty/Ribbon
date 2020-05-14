#!/bin/sh

# This shell script will collect sbx cli statistics until the spawned process is killed.

        spawn bash
#       sleep 18
        send "/opt/sonus/sbx/tailf/bin/confd_cli -uadmin\n";
        expect ">"
        send "configure\n";
        send "\n";
        expect ">"
        send "set addressContext default ipInterfaceGroup LIG1 ipInterface LIF1 ceName vsbc1 ipVarV4 IF2.IPV4 prefixVarV4 IF2.PrefixV4 vlanTagVar IF2.VlanId state enabled mode inService portName pkt0\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default ipInterfaceGroup LIG2 ipInterface LIF2 ceName vsbc1 ipVarV4 IF3.IPV4 prefixVarV4 IF3.PrefixV4 vlanTagVar IF3.VlanId state enabled mode inService portName pkt1\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE1 id 2 sipSigPort 1 ipInterfaceGroupName LIG1 portNumber 5060 transportProtocolsAllowed sip-udp ipVarV4 IF2.IPV4 state enabled\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE2 id 3 sipSigPort 2 ipInterfaceGroupName LIG2 portNumber 5060 transportProtocolsAllowed sip-udp state enabled ipVarV4 IF3.IPV4\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default staticRoute 0.0.0.0 0 10.34.226.1 LIG1 LIF1 preference 100\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default staticRoute 0.0.0.0 0 10.34.227.1 LIG2 LIF2 preference 100\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE1 id 2 sipTrunkGroup TG1 media mediaIpInterfaceGroupName LIG1\n";
        expect ">"
        send "comm\n";
        expect ">"
        send " set addressContext default zone ZONE2 id 3 sipTrunkGroup TG2 media mediaIpInterfaceGroupName LIG2\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE2 id 3 sipTrunkGroup TG2 state enabled mode inService\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE1 id 2 sipTrunkGroup TG1 state enabled mode inService\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE1 id 2 sipTrunkGroup TG1 ingressIpPrefix 10.0.0.0 8\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE2 id 3 sipTrunkGroup TG2 ingressIpPrefix 10.0.0.0 8\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE2 sipTrunkGroup TG2 signaling timers sessionKeepalive 0\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE1 sipTrunkGroup TG1 signaling timers sessionKeepalive 0\n";
        expect ">"
        send "comm\n";
        expect ">"
        send  "set addressContext default zone ZONE2 ipPeer PEER_OUT_1 ipAddress 10.54.81.66 ipPort 14088\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default zone ZONE2 ipPeer PEER_OUT_1 ipAddress 10.54.81.66 ipPort 14088\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set global callRouting routingLabel OUT_RL1 routingLabelRoute 0 ipPeer PEER_OUT_1 trunkGroup TG2 inService inService\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set global callRouting route trunkGroup TG1 VSBCSYSTEM standard Sonus_NULL 1 all all ALL none Sonus_NULL routingLabel OUT_RL1\n";
        expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default linkDetectionGroup LDG1 ceName vsbc1 threshold 2 state enabled\n";
        expect ">"
	send "comm\n";
	expect ">"
	send "set addressContext default linkDetectionGroup LDG1 ceName vsbc1 linkMonitor LM1_P physicalPort pkt0P interfaceGroup LIG1 interface LIF1 destination 10.34.226.1 state enabled probeOnStandby enabled\n";
	expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default linkDetectionGroup LDG1 ceName vsbc1 linkMonitor LM1_S physicalPort pkt0S interfaceGroup LIG1 interface LIF1 destination 10.34.226.1 state enabled probeOnStandby enabled\n";
	expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default linkDetectionGroup LDG2 ceName vsbc1 threshold 2 state enabled\n";
	expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default linkDetectionGroup LDG2 ceName vsbc1 linkMonitor LM1_P physicalPort pkt1P interfaceGroup LIG2 interface LIF2 destination 10.34.227.1 state enabled probeOnStandby enabled\n";
	expect ">"
        send "comm\n";
        expect ">"
        send "set addressContext default linkDetectionGroup LDG2 ceName vsbc1 linkMonitor LM1_S physicalPort pkt1S interfaceGroup LIG2 interface LIF2 destination 10.34.227.1 state enabled probeOnStandby enabled\n";
	expect ">"
        send "comm\n";
        expect ">"
		
		
		


