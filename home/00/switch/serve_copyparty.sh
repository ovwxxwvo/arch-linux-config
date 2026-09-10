#!/usr/bin/env bash


ACTIVE=$( ps -ef \
  |grep -v 'grep' \
  |grep -oc 'copyparty -' \
  )
echo CL $ACTIVE


function press_key {
  if [ $ACTIVE -ne 1 ]; then
    copyparty -p 8000 -v /home/:/:rw --hist ~/.cache/copyparty &
  else
    killall copyparty
  fi
  sleep 0.5
  }

press_key


