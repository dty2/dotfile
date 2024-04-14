#! /bin/bash
icon=" "
word="[执着]"
# stat 中的tr是为了去掉多余的空格
# 当电量充满后，会出现状态Not charging，若不用tr去掉空格，会报错
stat=`sudo tlp-stat -b | sed -n 's/.*status.*= //gp' | tr -d ' '`
power=`sudo tlp-stat -b | grep 'Charge.*=' | grep -Po '\d+(?=\.)'`
if [ ${stat} == "Discharging" ]
then
  if (( $power <= 10 ))
  then
    echo "%{F#FF0000}滚去充电!!!%{F-}"
  elif (( $power <= 50 && $power > 20 ))
  then
    echo "%{F#d87147}$icon%{F-}%{F#5c866b}$word%{F-}"
  elif (( $power <= 80 && $power > 50 ))
  then
    echo "%{F#cc9300}$icon%{F-}%{F#5c866b}$word%{F-}"
  elif (( $power <= 100 && $power > 80 ))
  then
    echo "%{F#20bf50}$icon%{F-}%{F#5c866b}$word%{F-}"
  else (( ${power} <= 20 && ${power} > 10 ))
    echo "%{F#FF0000}$icon$word%{F-}"
  fi
else
  echo "%{F#5c8680}$icon$word%{F-}"
fi
