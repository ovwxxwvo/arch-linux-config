#!/usr/bin/env bash


# swaymsg -t get_outputs | jq -r '.[].name'
ports=($(swaymsg -t get_outputs | jq -r '.[].name'))
for port in "${ports[@]}"; do
  # echo "port: $p"
  # swaymsg -t get_outputs | jq -r --arg p "$p" '.[] | select(.name == $p)'
  mode=($(swaymsg -t get_outputs | jq -r --arg p "$port" \
    '.[] |select(.name == $p) |.modes |sort_by(-.height) |first |"\(.width)x\(.height)"' \
    ))
  echo $mode
  swaymsg output "$port" mode "$mode"
  done
