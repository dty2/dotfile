#! /bin/bash
dir="$HOME/.config/rofi/launcher"
rofi \
    -show Custom \
    -theme $dir/style.rasi \
    -modi Custom:$dir/custom.sh,App:$dir/app.sh,Set:$dir/sets.sh,Hack:$dir/hack.sh
