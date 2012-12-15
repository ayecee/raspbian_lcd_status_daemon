#!/bin/bash

temp=`vcgencmd measure_temp | cut -d'=' -f2`
ip=`ifconfig eth0 | grep inet | cut -d':' -f2 | cut -d' ' -f1`
time=`date | cut -d' ' -f4`

echo "Time: $time              Temp: $temp                $ip"
