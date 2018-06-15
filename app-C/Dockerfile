from ubuntu:16.04

RUN apt update && apt upgrade -y
RUN apt install -y iperf3 stress-ng dstat inetutils-ping iproute2

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install curl
RUN curl https://packages.treasuredata.com/GPG-KEY-td-agent | apt-key add -
RUN echo "deb http://packages.treasuredata.com/2/ubuntu/xenial/ xenial contrib" > /etc/apt/sources.list.d/treasure-data.list
RUN apt-get -y update
RUN apt-get install -y --force-yes td-agent

CMD iperf3 -s
