Raspbian LCD Status Daemon
==========================

This daemon will run on a Raspberry Pi running Raspbian and output status information
to a pcd8544 controlled LCD connected via GPIOs. This is intended to be
used with a Nokia 5110 LCD (84x48, 1bpp).

Here's an example of what it prints out to the lcd, updating every 7 seconds or so:

    Time: 01:28:07
     Cpu: 8.3 %
     Mem: 82 %
    Temp: 46.5'C
    192.168.1.122

Right now this is split up into a few files:
* lcd_print - A program that just prints stdin to the lcd. This should be compiled, setuid root, and placed in /usr/sbin.
* rpi_status.sh - A script that grabs status info and outputs it. This should be placed in /usr/sbin.
* lcd_status_daemon.sh - A script that just pipes the output from rpi_status.sh into lcd_print and sleeps for 5 seconds. This should be placed in /usr/sbin and added to init.d

Below is how the LCD connects to the GPIOs.

LCD pin -- RPI GPIO pin
* CLK -- GPIO 17
* DIN -- GPIO 18
* D/C -- GPIO 21 (27 on rpi 2.0)
* CSE -- GPIO 22
* RST -- GPIO 23
* LED -- NC

WiringPi
========

You'll need to [download and install the WiringPi library](https://projects.drogon.net/raspberry-pi/wiringpi/download-and-install/) for this to compile.

PCD8544 Library
===============

This program uses a PCD8544 library by Andre Wussow, from his post [PCD8544 Library for Raspberry Pi](http://binerry.de/post/25787954149/pcd8544-library-for-raspberry-pi). This is included in the repo and need not be downloaded/installed externally.
