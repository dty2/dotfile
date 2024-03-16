#! /bin/bash

sign=`xset q | sed -n 's/.*\(Caps Lock:\) *\(on\|off\).*/\2/p'`
if [ $sign = "on" ]
then
	[[ $(fcitx5-remote) -eq 2 ]] && echo " CH" || echo " EN"
else
	[[ $(fcitx5-remote) -eq 2 ]] && echo " Ch" || echo " En"
fi
