#!/usr/bin/env bash


OUTPUT_HDMI=$(swaymsg -t get_outputs |grep -i 'HDMI')
OUTPUT_DP=$(swaymsg -t get_outputs |grep -i 'DP')

if [ -n "$OUTPUT_HDMI" ]; then
  # swaymsg 'workspace 2; exec '
  swaymsg 'workspace 1; exec firefox --browser'
  swaymsg 'workspace 2; exec alacritty -e tmux'
elif [ -n "$OUTPUT_DP" ]; then
  # swaymsg 'workspace 1 output DP-1'
  # swaymsg 'workspace 5 output DP-2'
  swaymsg 'workspace 1; exec firefox --browser'
  swaymsg 'workspace 2; exec alacritty -e tmux'
fi


sleep 10
pulseaudio --kill

