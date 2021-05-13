#!/bin/bash

sound=$(amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]')
label= 
echo -e "$label $sound"

#Toggle audio
if [[ "${BLOCK_BUTTON}" -eq 1 ]];then
	    amixer sset Master toggle

#increase audio
elif [[ "${BLOCK_BUTTON}" -eq 4  ]];then
	    amixer sset Master 2%+

#decrease audio
elif [[ "${BLOCK_BUTTON}" -eq 5  ]];then
	    amixer sset Master 2%-

fi

