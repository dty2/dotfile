#! /bin/bash

# --- options --- #
workdir="/home/hunter/.config/rofi/launcher"
init_op="Init"
blog_op="执着の小窝"

# --- cmds --- #
blog_cmd="firefox -new-window https://dty2.github.io/ -fullscreen"

# --- main --- #
run_cmd() {
  case $@ in
    $init_op)
      $workdir/init.sh > /dev/null 2>&1 &
        ;;
    $blog_op)
      $blog_cmd > /dev/null 2>&1 &
        ;;
  esac
}

main() {
  if [ ${ROFI_RETV} == "0" ]
  then 
    echo -en "$init_op\n$blog_op\n" 
  else 
    run_cmd $1
  fi
}

main $@
