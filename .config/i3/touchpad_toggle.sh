#!/bin/bash

id=$(xinput | grep -i touchpad | sed 's/^.*id=//;s/\s.*//')
option=$(xinput list-props 15 | grep "Device Enabled" | awk '{print $4}')
if [[ $option -eq 0 ]];
then
	xinput enable $id;
else
	xinput disable $id;
fi
