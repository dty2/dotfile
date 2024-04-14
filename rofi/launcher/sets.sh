#! /bin/bash

# --- options --- #
# --- cmds --- #
# --- main --- #
run_cmd() {
}

main() {
  if [ ${ROFI_RETV} == "0" ]
  then 
    echo -en "$init_op" 
  else 
    run_cmd $1
  fi
}

main $@

