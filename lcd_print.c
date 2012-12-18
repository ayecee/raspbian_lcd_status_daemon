/*
  lcd_print.c
  
  Copyright (C) 2012 by Andrew Orr, 2012, andrew@andreworr.ca
  Based on pcd8544_rpi.c, Copyright (C) 2012 by Andre Wussow, 2012, desk@binerry.de
 
================================================================================
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.
================================================================================
 */
#include <wiringPi.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/sysinfo.h>
#include "PCD8544.h"

// pin setup
int _din = 1;
int _sclk = 0;
int _dc = 2;
int _rst = 4;
int _cs = 3;
  
// lcd contrast 
int contrast = 50;

#define MAX_LINE_LEN 256

int main (void)
{
	char line[MAX_LINE_LEN] = {0};
	int i;

	// check wiringPi setup
	if (wiringPiSetup() == -1)
	{
		printf("wiringPi-Error\n");
		exit(1);
	}

	LCDInit(_sclk, _din, _dc, _cs, _rst, contrast);
	LCDclear();
	gets(line);
	for (i = 0; i < 5; i++) {
		LCDdrawstring(0, i*10, line);
		gets(line);
		if (feof(stdin)) {
			break;
		}
	}
	LCDdisplay();
}
