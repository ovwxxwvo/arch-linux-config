#!/usr/bin/env bash


root_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
source "${root_dir}/basic.sh"

id="$PANE_ID"
pts="$PANE_PTS"
cmd="$PANE_CMD"
# tmux display-message "$id $pts $cmd $exist"


exist=$( echo "$cmd" |grep -Ec "fish|yazi|nvim" )
if [[ "$exist" == "1" ]] ;then
  tmux send-keys -t "$id" "C-q"
else
  tmux kill-pane -t "$id"
fi


