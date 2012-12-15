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
