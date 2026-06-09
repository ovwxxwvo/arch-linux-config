#!/usr/bin/env bash


function press_key {
  # pactl set-sink-volume @DEFAULT_SINK@ -5%
  LOCK="/tmp/audio_volume.lock"
  [ -f $LOCK ] && exit; touch $LOCK

  v=$(pactl get-sink-volume @DEFAULT_SINK@ \
    |grep -Eo "[0-9]+%" |tr -d "%" |xargs)
  read vol_l vol_r <<< "$v"
  vol=$((($vol_l+$vol_r)/2/5*5-5))
  echo $v $vol
  pactl set-sink-volume @DEFAULT_SINK@ "${vol}%"

  rm -f $LOCK
  }

press_key


