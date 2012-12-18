# Makefile for raspbian lcd status daemon

PROJECT := lcd_print
SOURCES := PCD8544.c
APP_SOURCES := lcd_print.c

CFLAGS := -Wall -Wextra -pedantic
LDFLAGS := -L/usr/local/lib
LDLIBS := -lwiringPi

CC := gcc

OBJECTS := $(SOURCES:%.c=%.o)
APP_OBJECTS := $(APP_SOURCES:%.c=%.o)

$(PROJECT): $(OBJECTS) $(APP_OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJECTS) $(APP_OBJECTS) $(LDLIBS)

all: $(PROJECT)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f *.o $(PROJECT)

.PHONY: clean

