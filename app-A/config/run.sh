#!/bin/bash

TIME=600

/td-agent.sh

#iperf3 -c $SVC_APP_C1_PORT_5201_TCP_ADDR -t $TIME
# stress-ng -l 3 --cpu 1 --timeout ${TIME}s
# stress-ng -l 30 --cpu 4 --timeout ${TIME}s

tail -f /dev/null
