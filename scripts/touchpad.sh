#!/bin/bash

ID=$(xinput | grep Touchpad | awk '{print $6}' | cut -c4-)
TAPPING_ID=$(xinput --list-props $ID | grep Tapp | head -1 | awk '{print $4}' | cut -c2- | rev | cut -c3- | rev)

#echo $ID
#echo $TAPPING_ID

xinput --set-prop $ID $TAPPING_ID 1
