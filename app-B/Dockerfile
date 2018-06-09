from ubuntu

RUN apt update && apt upgrade -y
RUN apt install -y iperf3 stress-ng

ADD run.sh /run.sh

CMD /run.sh

