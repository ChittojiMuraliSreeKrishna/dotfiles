#!/bin/bash

com=$(light -G)
label=
echo -e "<b>$label: ${com%.*}%</b>"

case $BLOCK_BUTTON in
    4) light -U 10 ;;
    5) light -A 10 ;;
esac
