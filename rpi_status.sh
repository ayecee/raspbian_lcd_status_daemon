#!/bin/bash

temp=`vcgencmd measure_temp | cut -d'=' -f2`
clock_arm=`vcgencmd measure_clock arm | cut -d'=' -f2`
volts=`vcgencmd measure_volts core | cut -d'=' -f2`

echo " temp: $temp"
echo " freq: $clock_arm"
echo "volts: $volts"
