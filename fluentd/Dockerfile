FROM fluent/fluentd:v1.2

RUN gem install fluent-plugin-elasticsearch
COPY ./config/fluent.conf /fluentd/etc/fluent.conf

ADD run.sh /fluentd/run.sh

#CMD bash -c "sed -i -e \"s/TARGETHOST/$SVC_ESEARCH_PORT_9200_TCP_ADDR/\" /fluentd/etc/fluent.conf && exec fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins $FLUENTD_OPT"
#CMD bash -c "exec fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins $FLUENTD_OPT"
#CMD bash -c "fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins $FLUENTD_OPT"
#CMD exec fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins $FLUENTD_OPT --use-v1-config
CMD /fluentd/run.sh
