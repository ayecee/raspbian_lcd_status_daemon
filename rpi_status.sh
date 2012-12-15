#!/bin/bash

temp=`vcgencmd measure_temp | cut -d'=' -f2`
ip=`ifconfig eth0 | grep inet | cut -d':' -f2 | cut -d' ' -f1`
time=`date | cut -d' ' -f4`
idle=`top -bn2 | grep %Cpu | tail -n1 | sed 's/^.*ni, *//g' | cut -d' ' -f1`
cpu=$(echo 100.0 - $idle | bc)

echo "Time: $time"
echo "%CPU: $cpu"
echo "Temp: $temp"
echo "$ip"
