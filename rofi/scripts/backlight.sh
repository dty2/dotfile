#! /bin/bash

count=`expr $(light | sed 's/\.[0-9]*//') / 20`
signal[1]="󱩏 "
signal[2]="󱩑 "
signal[3]="󱩔 "
signal[4]="󱩕 "
signal[5]="󰛨 "

echo "${signal[$count]}"
