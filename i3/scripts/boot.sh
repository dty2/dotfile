#!/bin/bash 

# 开机初始化桌面
polybar_config="$HOME/.config/polybar"

boot_polybar() {
	killall -q polybar
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
	polybar -q main -c "$polybar_config/config.ini" &
}

boot_oneko() {
	killall -q oneko
	oneko -tofocus -speed 20 &
}

main() {
	boot_polybar
	boot_oneko
}

main
