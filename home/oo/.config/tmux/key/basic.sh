# TMUX config, terminal multiplexer.


pane_pts=$( tmux display-message -p '#{pane_tty}' \
  |grep -Eo "[a-z]{3}/[0-9]+" \
  )
pane_cmd=$( ps -o comm= -t $pane_pts \
  | tail -n 1 \
  )
  # | grep -E 'fish|yazi|nvim' \
pane_id=$( tmux display-message -p '#{pane_id}' )
cmd_exist=$( echo $pane_cmd |grep -Ec 'fish|yazi|nvim' )


# tmux display-message "$cmd_exist $pane_pts $pane_cmd $pane_id"
  # echo $pane_pts
  # echo $pane_cmd
  # echo $pane_id
  # echo '----------'


# read  -p '...'


