#! /bin/bash

# --- options --- #
burpsuite_cmd="burpsuite"

# --- cmds --- #
burpsuite="Burpsuite\0icon\x1fburpsuite"

run_cmd() {
  case $@ in
    "Burpsuite")
      $burpsuite_cmd > /dev/null 2>&1 &
        ;;
  esac
}

# --- main --- #
main() {
  if [ ${ROFI_RETV} == "0" ]
  then 
    echo -en "$burpsuite\n"
  else 
    run_cmd $1
  fi
}
main $@
