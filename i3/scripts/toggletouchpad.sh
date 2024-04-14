#!/bin/bash
# 手写板开关: alt_right
number=`xinput list | sed -n 's/.*Touchpad.*id=\([0-9]*\).*/\1/p'`

bool=`xinput list-props $number | sed -ne 's/Device Enabled (.*)://gp' -e 's/\n//gp'`

if [ $bool = 0 ]
then
	xinput set-prop $number "Device Enabled" 1
else
	xinput set-prop $number "Device Enabled" 0
fi
