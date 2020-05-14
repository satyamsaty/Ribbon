#!/bin/bash
function trap_ctrlc ()
{
    # perform cleanup here
  #  echo "Ctrl-C caught...performing clean up"


   # echo "Doing cleanup"

    # exit shell script with error code 2
    # if omitted, shell script will continue execution
    exit 2
}
# initialise trap to call trap_ctrlc function
# when signal 2 (SIGINT) is received
trap "trap_ctrlc" 2

SUBNET_NAME=$1
start_point=$(neutron subnet-show $SUBNET_NAME | grep allocation_pools | cut -d"|" -f3 | cut -d":" -f2| cut -d"\"" -f2| cut -d"." -f4)
echo allocation pool starting IP: $start_point
ip_prefix=$(neutron subnet-show $SUBNET_NAME | grep allocation_pools | cut -d"|" -f3 | cut -d":" -f2| cut -d"\"" -f2| cut -d"." -f1-3)
end_point=$(neutron subnet-show $SUBNET_NAME | grep allocation_pools | cut -d"|" -f3 | cut -d":" -f3| cut -d"\"" -f2| cut -d"." -f4)
echo allocation pool last IP: $end_point
#net_id=`openstack subnet show $SUBNET_NAME | grep network_id | awk -F "|" '{print $3}'`
ip_list=$(neutron port-list | grep `neutron subnet-show $SUBNET_NAME | awk '/ id / {print $4}'` | cut -d"|" -f5 | cut -d":" -f3 | cut -d"\"" -f2| sort)

total_count=0
for((index=$start_point; index<$end_point;index++))
do
        ip=$ip_prefix"."$index
        result=$(echo $ip_list | grep $ip)

        if [[ -z $result ]]; then
                cmd=`openstack port list  |grep -i $ip|cut -d"|" -f5|cut -d"," -f2`
                if [[ "$cmd" == "" ]]; then
                    echo "$ip"
                fi
                
                let total_count++
        fi
done
echo Total number of IPs in allocation pool: $total_count

