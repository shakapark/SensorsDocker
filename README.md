# SensorsDocker
This docker is use to take temperature of CPU and edit them in the file *prometheus_sensors.prom*. This file have the prometheus format and need Node-Exporter to be exploid. 
Run SensorsDocker with the following command :
~~~ shell
$ docker run --name sensors -d -v "/path/to/folder:/home/node-exporter:rw" shakapark/sensorsdocker
~~~

You need to add the parameter *-collector.textfile.directory="/path/to/folder/"* on Node-Exporter
