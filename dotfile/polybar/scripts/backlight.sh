#! /bin/bash

count=`expr $(light | sed 's/\.[0-9]*//') / 20`
change=`expr $(date -u +%S) % 2`
change_signal="󰌵 "
signal[1]="󱩏 "
signal[2]="󱩑 "
signal[3]="󱩔 "
signal[4]="󱩕 "
signal[5]="󰛨 "

if [ ${change} == 1 ];then
echo "${change_signal}$(light | sed 's/\.[0-9]*//')%"
else 
echo "${signal[$count]}$(light | sed 's/\.[0-9]*//')%"
fi
