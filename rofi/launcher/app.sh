#! /bin/bash

# --- options --- #
edge="edge\0icon\x1fmicrosoft-edge"
firefox="firefox\0icon\x1ffirefox"
gimp="gimp\0icon\x1fgimp"
# 可在/usr/share/applications中查得rofi能识别的软件名称来添加icon

# --- cmd --- #
edge_cmd="microsoft-edge-stable www.google.com"
firefox_cmd="firefox -new-window www.google.com"
gimp_cmd="gimp"

run_cmd() {
  case $@ in
    "edge")
      $edge_cmd > /dev/null 2>&1 &
        ;;
    "firefox")
      $firefox_cmd > /dev/null 2>&1 &
        ;;
    "gimp")
      $gimp_cmd > /dev/null 2>&1 &
        ;;
  esac
}

# --- main --- #
main() {
  if [ ${ROFI_RETV} == "0" ]
  then 
    echo -en "$edge\n$firefox\n$gimp\n" 
  else 
    run_cmd $1
  fi
}
main $@
