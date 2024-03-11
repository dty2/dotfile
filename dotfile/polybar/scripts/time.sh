#! /bin/bash

count=`expr $(date -u +%S) % 4`
sign[0]="󰔟 "
sign[1]="󱦠 "
sign[2]="󱦟 "
sign[3]="󱦠 "

echo "${sign[$count]}$(date -u +%c)"
