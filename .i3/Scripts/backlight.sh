#!/bin/bash

com=$(light -G)
label= 
echo -e "$label ${com%.*}%"

if [[ "${BLOCK_BUTTON}" -eq 5 ]];then 
	    light -A 10

elif [[ "${BLOCK_BUTTON}" -eq 4 ]];then
	    light -U 10

fi
