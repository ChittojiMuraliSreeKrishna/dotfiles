#!/usr/bin/env bash

source `realpath "$0" | xargs dirname`/colors.sh

bat_number="${BLOCK_INSTANCE:-0}"

acpi=$(acpi -b | grep 'Battery '"$bat_number" | sed 's/\ //g')
status=$(echo "$acpi" | cut -d, -f1 | cut -d: -f2)
percent=$(echo "$acpi" | cut -d, -f2 | sed 's/\%//g')
time=$(echo "$acpi" | cut -d, -f3 | cut -d: --fields=1,2)

if [ "$status" == "Full" ]; then
  full_text=' '
  short_text=' '
else
  if [ "$status" == "Discharging" ]; then
    if [ "$percent" -gt "90" ]; then
      label=' '
    elif [ "$percent" -gt "60" ]; then
      label=' '
    elif [ "$percent" -gt "40" ]; then
      label=' '
    elif [ "$percent" -gt "10" ]; then
      label=' '
    else
      label=' '
    fi
  fi
  if [ "$status" == "Discharging" ]; then
    full_text="$label $percent%"' ('"$time"')'
    short_text='- '"$percent"'%'
  elif [ "$status" == "Charging" ]; then
    full_text=' '" $percent%"' ('"$time"')'
    short_text=' '" $percent"'%'
  else
    full_text='Error parsing battery from acpi'
    short_text=''
  fi
fi

echo -e "<b>$full_text</b>"
echo -e "<b>$short_text</b>"

# consider color and urgent flag only on discharge
if [ "$status" == "Discharging" ] && [ "$percent" -gt "90" ]; then
    echo $color1
elif [ "$status" == "Discharging" ] && [ "$percent" -gt "15"  ];then
    echo $color0
elif [ "$status" == "Discharging" ] && [ "$percent" -gt "10" ]; then
    echo $color2
elif [ "$status" == "Discharging" ]; then
  exit 33
fi
exit 0

