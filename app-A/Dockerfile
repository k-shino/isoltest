from ubuntu:16.04

RUN apt update && apt upgrade -y
RUN apt install -y make gcc vim iperf3 stress-ng dstat inetutils-ping iproute2

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install curl
RUN curl https://packages.treasuredata.com/GPG-KEY-td-agent | apt-key add -
RUN echo "deb http://packages.treasuredata.com/2/ubuntu/xenial/ xenial contrib" > /etc/apt/sources.list.d/treasure-data.list
RUN apt-get -y update
RUN apt-get install -y --force-yes td-agent
RUN /opt/td-agent/usr/sbin/td-agent-gem install fluent-plugin-elasticsearch

ADD run.sh /run.sh
COPY config/td-agent.conf /etc/td-agent/td-agent.conf

#ENTRYPOINT ["/etc/init.d/supervisord", "start"]

CMD /run.sh

