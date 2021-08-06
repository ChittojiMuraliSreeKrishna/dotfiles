#!/bin/bash 

source `realpath "$0" | xargs dirname`/colors.sh

status=$(mocp -Q '%state')
media=$(mocp -Q '%file' | sed "s/.*\///")

if [ "$status" == "STOP" ]; then
    full_text='  MOCP Stopped'
    short_text='  MOCP Stopped'
else
    if [ "$status" == "PLAY" ]; then
        label=' '
    elif [ "$status" == "PAUSE" ]; then
        label=' '
    else
        label=' '
    fi
fi
if [ "$status" == "PLAY" ] || [ "$status" == "PAUSE" ]; then
    full_text="$label <i>$media</i>"
    short_text="$label <i>$media</i>"
fi

echo -e "$full_text"
echo -e "$short_text"

if [ "$status" == "PLAY" ]; then
    echo $color1
elif [ "$status" == "PAUSE" ] || [ "$status" == "STOP" ]; then
    echo $color6
else
    echo $color2
fi


case $BLOCK_BUTTON in
    1) mocp -G ;;
    4) mocp -f ;;
    5) mocp -r ;;
esac


