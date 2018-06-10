from ubuntu

RUN apt update && apt upgrade -y
RUN apt install -y iperf3 stress-ng dstat inetutils-ping iproute2

CMD iperf3 -s
