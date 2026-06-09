#!/usr/bin/env bash

uid=$(id -u)

# old pane env
old_pane_tty=$(tmux display-message -p "#{pane_tty}")
old_pane_tty=$(echo "${old_pane_tty}" |sed "s|/dev/||;s|/||g")
old_file_nvim="/tmp/nvim-${uid}/${old_pane_tty}.sock"
# cwd_nvim=$(nvim --server "${old_file_nvim}" --remote-expr "getcwd()" 2>/dev/null)
cwd_nvim=$(nvim --server "${old_file_nvim}" --remote-expr "expand('%:p:h')" 2>/dev/null)
cwd="$cwd_nvim"
# echo $old_file_nvim
# echo $cwd_nvim

# new pane env
tmux kill-pane -a
tmux split-window -h

new_pane_id=$(tmux display-message -p -F "#{pane_id}")
new_pane_tty=$(tmux display-message -p "#{pane_tty}")
new_pane_id=$(echo "${new_pane_id}" |sed "s/[^0-9]//g")
new_pane_tty=$(echo "${new_pane_tty}" |sed "s|/dev/||;s|/||g")
# echo $new_pane_id
# echo $new_pane_tty

new_file_nvim="/tmp/nvim-${uid}/${new_pane_tty}.sock"
new_file_yazi="/tmp/yazi-${uid}/${new_pane_tty}.temp"
# echo $new_file_nvim
# echo $new_file_yazi

# open file
tmux send-keys -t %"${new_pane_id}" "exec nvim --listen ${new_file_nvim}" Enter
tmux new -d -s scratch -E "yazi ${cwd} --chooser-file ${new_file_yazi}"
tmux popup -w 80% -h 80% -xC -yC -b rounded -E "tmux attach -t scratch"

edit_file=$(cat "${new_file_yazi}"; > "${new_file_yazi}")
nvim --server "${new_file_nvim}" --remote "${edit_file}" &>/dev/null

exit 0


