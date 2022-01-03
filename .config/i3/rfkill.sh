#!/bin/bash

count=$(rfkill | sed '1d' | awk '{print $4}' | grep -c "^blocked$")
total=$(rfkill | sed '1d' | wc -l)

if [[ $count -lt $total ]];
then
	SUDO_ASKPASS=${HOME}/.config/i3/sudo_askphrase.sh sudo -A rfkill toggle all
fi

