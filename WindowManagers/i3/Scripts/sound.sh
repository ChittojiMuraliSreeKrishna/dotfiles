#!/bin/sh

case $BLOCK_BUTTON in
  1) pactl set-sink-mute @DEFAULT_SINK@ toggle ;; # right click : toggle mute
  4) pactl set-sink-volume @DEFAULT_SINK@ +2% ;; # scroll up : increase vol by 2%
  5) pactl set-sink-volume @DEFAULT_SINK@ -2% ;; # scroll down : decrease vol by 2%
esac

sinks=$(pactl list sinks)
isbluetooth=$(echo "$sinks" | grep bluez)
isheadphone=$(echo "$sinks" | grep "Active Port: analog-output-headphone")
ismuted=$(echo "$sinks" | grep "Mute: " | tail -1 | awk '{print $2}')
volume=$(echo "$sinks" | grep "Volume: " | tail -2 | head -1 | awk '{print $5}' | tr -d '%')

if [ -n "$isbluetooth" ]; then
  color="#076678"
  if [ "$ismuted" = "yes" ]; then
    color="#CC241D"
  fi
elif [ -n "$isheadphone" ]; then
  color="#79740E"
  if [ "$ismuted" = "yes" ]; then
      color="#9D0006"
  fi
elif [ "$ismuted" = "yes" ]; then
  color="#A89984"
else
  color="#282828"
fi

printf "<span color='%s'>" "$color"

if [ "$ismuted" = "yes" ]; then
  printf "<s> "
fi
if [ -n "$isbluetooth" ]; then
    printf "<b>: $volume</b>"
elif [ -n "$isheadphone" ]; then
    printf "<b>: $volume</b>"
else 
    printf "<b>: $volume </b>"
fi

printf "<small>%%</small>"

if [ "$ismuted" = "yes" ]; then
  printf " </s>"
fi

echo "</span>"

