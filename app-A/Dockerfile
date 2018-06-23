from ubuntu:16.04

RUN apt update && \
    apt upgrade -y && \
    apt install -y make gcc vim iperf3 stress-ng dstat inetutils-ping iproute2 curl && \
    curl https://packages.treasuredata.com/GPG-KEY-td-agent | apt-key add - && \
    echo "deb http://packages.treasuredata.com/2/ubuntu/xenial/ xenial contrib" > /etc/apt/sources.list.d/treasure-data.list && \
    apt-get -y update && \
    apt-get install -y --force-yes td-agent && \
    /opt/td-agent/usr/sbin/td-agent-gem install fluent-plugin-elasticsearch

RUN /opt/td-agent/usr/sbin/td-agent-gem install fluent-plugin-event-tail
RUN /opt/td-agent/usr/sbin/td-agent-gem install fluent-plugin-parser

ADD run.sh /run.sh
COPY config/td-agent.conf /etc/td-agent/td-agent.conf

#ENTRYPOINT ["/etc/init.d/supervisord", "start"]

CMD /run.sh

