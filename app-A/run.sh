#!/bin/bash

TIME=600

sed -i -e "s/TARGETHOST/$SVC_ESEARCH_PORT_9200_TCP_ADDR/" /etc/td-agent/td-agent.conf

mkdir /home/log
chmod 777 /home/log

sleep 10
service td-agent start


#iperf3 -c $SVC_APP_C1_PORT_5201_TCP_ADDR -t $TIME
# stress-ng -l 3 --cpu 1 --timeout ${TIME}s
# stress-ng -l 30 --cpu 4 --timeout ${TIME}s

tail -f /dev/null

