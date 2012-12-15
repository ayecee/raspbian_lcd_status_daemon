#!/bin/bash

temp=`vcgencmd measure_temp | cut -d'=' -f2`
ip=`ifconfig eth0 | grep inet | cut -d':' -f2 | cut -d' ' -f1`
time=`date | cut -d' ' -f4`
idle=`top -bn2 | grep %Cpu | tail -n1 | sed 's/^.*ni, *//g' | cut -d' ' -f1`
cpu=$(echo 100.0 - $idle | bc)
memtotal=`cat /proc/meminfo | head -n1 | sed 's/.*: *//g' | cut -d' ' -f1`
memfree=`cat /proc/meminfo | head -n2 | tail -n1 | sed 's/.*: *//g' | cut -d' ' -f1`
memused=$(echo $memtotal - $memfree | bc)
mem=$(echo $memused \* 100 / $memtotal | bc)

echo "Time: $time"
echo " Cpu: $cpu %"
echo " Mem: $mem %"
echo "Temp: $temp"
echo "$ip"
