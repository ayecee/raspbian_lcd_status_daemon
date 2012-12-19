v 20110115 2
C 40000 40000 0 0 0 title-B.sym
N 42600 48900 42600 48400 4
N 48500 47600 51300 47600 4
N 42200 49500 49700 49500 4
N 42200 49500 42200 45600 4
N 42200 45600 42800 45600 4
N 41900 49800 49400 49800 4
N 41900 49800 41900 46000 4
N 41900 46000 42800 46000 4
N 41700 50000 41700 46400 4
N 41700 46400 42800 46400 4
N 48500 46400 51300 46400 4
C 42800 43200 1 0 0 rpi-gpio.sym
{
T 48200 49100 5 10 0 0 0 0 1
device=RPI-GPIO
T 45700 47800 5 10 1 1 0 3 1
refdes=RPI
T 42800 43200 5 10 0 0 0 0 1
footprint=HEADER26
}
C 53000 45600 1 0 1 connector8-1.sym
{
T 52900 48800 5 10 0 0 0 6 1
device=PCD8544_LCD
T 52900 48200 5 10 1 1 0 6 1
refdes=LCD
T 51600 47900 5 10 1 1 0 0 1
pinlabel=1=VCC
T 51600 47600 5 10 1 1 0 0 1
pinlabel=2=GD
T 51600 47300 5 10 1 1 0 0 1
pinlabel=3=SCE
T 51600 47000 5 10 1 1 0 0 1
pinlabel=4=RST
T 51600 46700 5 10 1 1 0 0 1
pinlabel=5=D/C
T 51300 46400 5 10 1 1 0 0 1
pinlabel=6=DIN (MOSI)
T 51600 46100 5 10 1 1 0 0 1
pinlabel=7=SCLK
T 51600 45800 5 10 1 1 0 0 1
pinlabel=8=LED
T 53000 45600 5 10 0 0 0 0 1
footprint=JUMPER8
}
N 51300 47900 51300 48200 4
N 49700 47300 49700 49500 4
N 49400 46700 49400 49800 4
N 48500 45600 50200 45600 4
N 49000 46100 49000 50000 4
N 49000 50000 41700 50000 4
N 49700 47300 51300 47300 4
N 49400 46700 51300 46700 4
N 51300 46100 49000 46100 4
N 42600 48400 42800 48400 4
C 51000 44700 1 0 0 switch-pushbutton-no-1.sym
{
T 51400 45000 5 10 1 1 0 0 1
refdes=S1
T 51400 45300 5 10 0 0 0 0 1
device=SWITCH_PUSHBUTTON_NO
T 51000 44700 5 10 0 0 0 0 1
footprint=SWITCH_FSMJSM
}
C 51000 44000 1 0 0 switch-pushbutton-no-1.sym
{
T 51400 44300 5 10 1 1 0 0 1
refdes=S2
T 51400 44600 5 10 0 0 0 0 1
device=SWITCH_PUSHBUTTON_NO
T 51000 44000 5 10 0 0 0 0 1
footprint=SWITCH_FSMJSM
}
C 51000 43300 1 0 0 switch-pushbutton-no-1.sym
{
T 51400 43600 5 10 1 1 0 0 1
refdes=S3
T 51400 43900 5 10 0 0 0 0 1
device=SWITCH_PUSHBUTTON_NO
T 51000 43300 5 10 0 0 0 0 1
footprint=SWITCH_FSMJSM
}
N 50200 45600 50200 47000 4
N 50200 47000 51300 47000 4
C 49600 44600 1 0 0 resistor-1.sym
{
T 49900 45000 5 10 0 0 0 0 1
device=RESISTOR
T 49800 44900 5 10 1 1 0 0 1
refdes=R1
T 50200 44900 5 10 1 1 0 0 1
value=10K
T 49600 44600 5 10 0 0 0 0 1
footprint=0805
}
C 49600 43900 1 0 0 resistor-1.sym
{
T 49900 44300 5 10 0 0 0 0 1
device=RESISTOR
T 49800 44200 5 10 1 1 0 0 1
refdes=R2
T 50200 44200 5 10 1 1 0 0 1
value=10K
T 49600 43900 5 10 0 0 0 0 1
footprint=0805
}
C 49600 43200 1 0 0 resistor-1.sym
{
T 49900 43600 5 10 0 0 0 0 1
device=RESISTOR
T 49800 43500 5 10 1 1 0 0 1
refdes=R3
T 50200 43500 5 10 1 1 0 0 1
value=10K
T 49600 43200 5 10 0 0 0 0 1
footprint=0805
}
N 49400 43300 49600 43300 4
N 49600 44700 49400 44700 4
N 49600 44000 49400 44000 4
N 50500 44700 51000 44700 4
N 50500 44000 51000 44000 4
N 50500 43300 51000 43300 4
C 49300 42800 1 0 0 gnd-1.sym
N 52000 44700 52700 44700 4
N 52700 44000 52000 44000 4
N 52000 43300 52700 43300 4
N 49400 44700 49400 43100 4
C 52500 45000 1 0 0 generic-power.sym
{
T 52700 45250 5 10 1 1 0 3 1
net=+3.3V
}
N 52700 45000 52700 43300 4
C 51100 48200 1 0 0 generic-power.sym
{
T 51300 48450 5 10 1 1 0 3 1
net=+3.3V
}
C 42400 48900 1 0 0 generic-power.sym
{
T 42600 49150 5 10 1 1 0 3 1
net=+3.3V
}
N 50500 47600 50500 48000 4
C 50600 48300 1 180 0 gnd-1.sym
N 50800 44700 50800 45200 4
N 50800 45200 48500 45200 4
N 50800 44000 50800 44400 4
N 50800 44400 48500 44400 4
N 50800 43300 50800 42400 4
N 50800 42400 42500 42400 4
N 42500 42400 42500 47200 4
N 42500 47200 42800 47200 4
