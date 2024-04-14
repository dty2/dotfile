#! /bin/bash

work_dir="$HOME/.config/polybar"
file="$work_dir/.tmp_env"
size=5
motto[0]="天生我才必有用， 千金散尽还复来"
motto[1]="人生得意须尽欢， 莫使金樽空对月"
motto[2]="我嘲世间情难得， 天作缘尽两岸隔"
motto[3]="十年生死两茫茫， 不思量，自难忘"
motto[4]="回顾皆草木， 唯你是青山"
motto[5]="缘分多匆匆， 好似一场梦"

motto_count=0 #初始化

if [ -e $file ]
then
  motto_count=$(cat $file)
else
  touch $file
  echo 0 > $file
  motto_count=0
fi

echo "${motto[$motto_count]}"
let motto_count++
sleep 8

if (( $motto_count < $size ))
then
  echo $motto_count > $file
else
  motto_count=0
  echo $motto_count > $file
fi

