#!/bin/sh

sed -i -e "s/TARGETHOST/$SVC_ESEARCH_PORT_9200_TCP_ADDR/" /fluentd/etc/fluent.conf

exec fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins $FLUENTD_OPT --use-v1-config

