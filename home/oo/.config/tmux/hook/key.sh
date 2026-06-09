# TMUX config, terminal multiplexer.


pts=$( tmux display -p '#{pane_tty}' )
cmd=$( ps -o comm= -t $pts \
  | grep -Ev 'less' \
  | tail -n 1 )


if [[ $cmd =~ 'vi' || $cmd =~ 'ya' ]]; then
  # tmux display ' key, vi & ra '
  tmux source ~/.config/tmux/keymap/unctrl.tmx
else
  tmux source ~/.config/tmux/keymap/ctrl.tmx
fi


# read  -p '...'


