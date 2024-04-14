workspace="i3 workspace number"
# init
$workspace 2 > /dev/null 2>&1 & 
firefox -new-window www.google.com > /dev/null 2>&1 & 
sleep 1.0

$workspace 8 > /dev/null 2>&1 & 
alacritty > /dev/null 2>&1 & 
alacritty > /dev/null 2>&1 & 
sleep 1.0

$workspace 9 > /dev/null 2>&1 &
firefox -new-window https://dty2.github.io/ > /dev/null 2>&1 &
sleep 1.0
xdotool key F11
sleep 1.0
$workspace 8 > /dev/null 2>&1 &
