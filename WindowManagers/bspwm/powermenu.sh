#!/usr/bin/env bash

poweroffVar="Poweroff"
rebootVar="Reboot"
sleepVar="Sleep"
restartVar="Restart bspwm"
exitVar="Exit bspwm"

poweroffLap(){
    systemctl poweroff
}

rebootLap(){
    systemctl reboot
}
sleepLap(){
    systemctl sleep
}
exitBspwm(){
    bspc quit
}
restartBspwm(){
    bspc wm -r
}

choosen=$(printf "$restartVar\n$exitVar\n$poweroffVar\n$rebootVar\n$sleepVar" |
    rofi -dmenu -p "PowerMenu" -theme onedark)

case $choosen in
    $poweroffVar)
        poweroffLap
        ;;
    $rebootVar)
        rebootLap
        ;;
    $sleepVar)
        sleepLap
        ;;
    $restartVar)
        restartBspwm
        ;;
    $exitVar)
        exitBspwm
        ;;
esac

