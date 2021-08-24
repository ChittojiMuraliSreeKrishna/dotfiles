#!/usr/bin/env bash

poweroffVar="Poweroff"
rebootVar="Reboot"
sleepVar="Sleep"
restartVar="Restart i3"
lockVar="Lock i3"
exitVar="Exit i3"

poweroffLap(){
    systemctl poweroff
}

rebootLap(){
    systemctl reboot
}
sleepLap(){
    systemctl sleep
}
lockI3(){
    i3lock
}
exitI3(){
    i3-msg exit
}
restartI3(){
    i3-msg -q restart
}

choosen=$(printf "$restartVar\n$lockVar\n$exitVar\n$poweroffVar\n$sleepVar\n$rebootVar" |
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
        restartI3
        ;;
    $lockVar)
        lockI3
        ;;
    $exitVar)
        exitI3
        ;;
esac

