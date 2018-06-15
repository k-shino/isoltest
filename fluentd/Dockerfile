FROM fluent/fluentd:v1.1.3

RUN gem install fluent-plugin-elasticsearch

COPY ./config/fluent.conf /fluentd/etc/fluent.conf
