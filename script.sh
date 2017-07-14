#!/bin/bash

while [ 1 -eq 1 ]
do
  sensors | perl -nle 's/Core\s(\d+): \s* \+(\d+) \..*/node_cpu_temp{cpu="\1"} \2/x and print' > /home/node-exporter/prometheus_sensors.prom
done
