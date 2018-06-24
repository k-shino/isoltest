#!/bin/bash

sed -i -e "s/TARGETHOST/$SVC_ESEARCH_PORT_9200_TCP_ADDR/" /etc/td-agent/td-agent.conf
mkdir /home/log && chmod 777 /home/log
sleep 10
curl -X PUT http://$SVC_ESEARCH_SERVICE_HOST:9200/_template/logstash-tmpl -d "@/curl.json" > log_curl.txt
sleep 10
service td-agent start
