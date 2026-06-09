#!/usr/bin/env bash


file="$1"
server="$2"

nvim --server "$server" --remote-send "<cmd>PeekToggle<CR>"
