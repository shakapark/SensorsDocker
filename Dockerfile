FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y lm-sensors && \
  mkdir -p /home/node-exporter && \
  echo "*  *    * * *   root    sensors | perl -nle 's/Core\s(\d+): \s* \+(\d+) \..*/node_cpu_temp{cpu="\1"} \2/x and print' > /etc/prometheus/node-exporter/prometheus_sensors.prom'" >> /etc/crontab

ENV HOME /root

WORKDIR /root

CMD ["/run.sh"]

