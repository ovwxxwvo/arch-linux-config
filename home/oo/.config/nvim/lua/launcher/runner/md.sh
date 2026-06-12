#!/usr/bin/env bash


file="$1"
server="$2"

nvim --server "$server" --remote-send "<cmd>PeekToggle<CR>"

{
sleep 2
title="Peek\spreview\s—\sMozilla\sFirefox"
swaymsg [title="$title"] move left
swaymsg [title="$title"] focus prev
} &


