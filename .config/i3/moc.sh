#!/bin/bash 

media=$(mocp -Q '%song - %album')
echo -e "$media"

#PAUSE TRACK
if [[ "${BLOCK_BUTTON}" -eq 1 ]];then
	mocp -G

## PREVIOUS TRACK
elif [[ "${BLOCK_BUTTON}" -eq 5 ]];then 
	mocp -r

## NEXT TRACK
elif [[ "${BLOCK_BUTTON}" -eq 4 ]];then
	mocp -f

fi
