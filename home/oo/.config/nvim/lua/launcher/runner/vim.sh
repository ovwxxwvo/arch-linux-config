#!/usr/bin/env bash


server="$2"
file="$1"
nvim --server "$server" --remote-send "<cmd>source $file<CR>"


