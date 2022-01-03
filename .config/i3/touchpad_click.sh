#!/bin/bash

id=$(xinput | grep -i touchpad | sed 's/^.*id=//;s/\s.*//')
prop=$(xinput list-props 15 | grep "Tapping Enabled (" | grep -Po "\d\d\d" )

xinput set-prop $id $prop 1

