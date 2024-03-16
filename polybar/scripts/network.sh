#! /bin/bash

bool=$(nmcli d wifi | grep "*")
if [ -n "$bool" ];then
signal[0]="󰤭 "
signal[1]="󰤯 "
signal[2]="󰤟 "
signal[3]="󰤢 "
signal[4]="󰤥 "
signal[5]="󰤨 "

count=`expr $(nmcli device wifi | awk '/\*/ {print $8}') / 20`
#name=$(nmcli device wifi | awk '/\* / {print $3}')

echo "${signal[$count]}"

else
nosign="󰤭 " 
echo "${nosign}Offline"

fi

