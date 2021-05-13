#!/bin/bash 

media=$(mocp -Q '%file')
echo -e "$media" | sed "s/.*\///"

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
