FROM docker.elastic.co/kibana/kibana:5.6.4

RUN kibana-plugin remove x-pack
ADD kibana.yml /usr/share/kibana/config/kibana.yml
