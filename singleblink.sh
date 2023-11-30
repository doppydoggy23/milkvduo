#!/bin/sh
LED=440
# Run GPIO-LED
echo $LED > /sys/class/gpio/export
# Setup GPIO-LED
echo out > /sys/class/gpio/gpio$LED/direction

echo 1 > /sys/class/gpio/gpio$LED/value
sleep 0.5
echo 0 > /sys/class/gpio/gpio$LED/value
sleep 0.5

# cleanup gpio
echo $LED > /sys/class/gpio/unexport
