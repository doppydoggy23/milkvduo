#!/bin/sh 

#limits of screen
MAXX=79 
MAXY=24

#GPIO device
LED_GPIO=/sys/class/gpio/gpio440

BALLX=1
BALLY=1
INCX=1
INCY=1
KBENTER=""

printBallXY () {
	local X=$1
	local Y=$2
    clear
    printf "\033[${Y};${X}f O"
}

blinkledOn () {
    echo 1 > $LED_GPIO/value
}

blinkledOff () {
    echo 0 > $LED_GPIO/value
}

#open device
echo 440 > /sys/class/gpio/export
echo out > $LED_GPIO/direction

#the only way to stop the program is using CTRL-C
while true
do
    printBallXY ${BALLX} ${BALLY}

    if [ $((BALLX)) -gt $((MAXX)) ]; then INCX=-1; blinkledOn; fi
    if [ $((BALLY)) -gt $((MAXY)) ]; then INCY=-1; blinkledOn; fi
    if [ $((BALLX)) -lt 0 ]; then INCX=1; blinkledOn; fi
    if [ $((BALLY)) -lt 0 ]; then INCY=1; blinkledOn; fi

    BALLX=$(($BALLX+$INCX))
    BALLY=$(($BALLY+$INCY))

    sleep 0.05
    blinkledOff
done
