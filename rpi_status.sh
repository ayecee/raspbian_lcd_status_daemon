#!/bin/bash

temp=`vcgencmd measure_temp | cut -d'=' -f2`
ip=`ifconfig eth0 | grep inet | cut -d':' -f2 | cut -d' ' -f1`
time=`date +%T`
cpu=`ps -e -o pcpu | tail -n +2 | sed '{:q;N;s/\n/ + /g;t q}' | bc`
memtotal=`head -n1 /proc/meminfo | sed 's/.*: *//g' | cut -d' ' -f1`
memfree=`head -n2 /proc/meminfo | tail -n1 | sed 's/.*: *//g' | cut -d' ' -f1`
memused=$(($memtotal - $memfree))
mem=$(($memused * 100 / $memtotal))

echo "Time: $time"
echo " Cpu: $cpu %"
echo " Mem: $mem %"
echo "Temp: $temp"
echo "$ip"
