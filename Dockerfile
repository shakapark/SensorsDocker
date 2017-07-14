FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y lm-sensors && \
  mkdir -p /home/node-exporter

ENV HOME /root

WORKDIR /root

COPY script.sh HOME/

CMD ["/root/script.sh"]

