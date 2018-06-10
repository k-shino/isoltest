#!/bin/bash

TIME=60

iperf3 -c $SVC_APP_C1_PORT_5201_TCP_ADDR -t $TIME &
stress-ng -l 30 --cpu 4 --timeout ${TIME}s


