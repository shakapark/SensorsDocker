#!/bin/bash

while true;
do
  sensors | perl -nle 's/Core\s(\d+): \s* \+(\d+) \..*/node_cpu_temp{cpu="\1"} \2/x and print' > /home/node-exporter/prometheus_sensors.prom
  sleep 10
done
