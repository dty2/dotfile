#! /bin/bash

count=`expr $(date -u +%S) % 12`
sign[0]=" "
sign[1]=" "
sign[2]=" "
sign[3]=" "
sign[4]=" "
sign[5]=" "
sign[6]=" "
sign[7]=" "
sign[8]=" "
sign[9]=" "
sign[10]=" "
sign[11]=" "
echo " ${sign[$count]}$(date +%H时%M分%S秒)"
