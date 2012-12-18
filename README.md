Raspbian LCD Status Daemon
==========================

This daemon will run on a Raspbian install and output status information
to a pcd8544 controlled LCD connected via GPIOs. This is intended to be
used with a Nokia 5110 LCD (84x48, 1bpp).

Here's an example of what it prints out to the lcd, updating every 7 seconds or so:

    Time: 01:28:07
     Cpu: 8.3 %
     Mem: 82 %
    Temp: 46.5'C
    192.168.1.122


WiringPi
========

You'll need to [download and install the WiringPi library](https://projects.drogon.net/raspberry-pi/wiringpi/download-and-install/) for this to compile.

PCD8544 Library
===============

PCD8544 library by Andre Wussow, from his post [PCD8544 Library for Raspberry Pi](http://binerry.de/post/25787954149/pcd8544-library-for-raspberry-pi)
