#!/usr/bin/env bash


source ~/.config/tmux/key/basic.sh
pts=$pane_pts
cmd=$pane_cmd
id=$pane_id
exist=$cmd_exist

if [[ "$exist" == '1' ]] ;then
  tmux send-keys -t "$id" 'C-q'
else
  tmux kill-pane -t "$id"
fi

# tmux display-message "$exist $pts $cmd"


