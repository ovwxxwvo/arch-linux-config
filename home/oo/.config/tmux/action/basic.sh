# TMUX config, terminal multiplexer.


PANE_ID=$( tmux display -p "#{pane_id}" )
PANE_PTS=$( tmux display -p "#{pane_tty}" )
PANE_CMD=$( ps -o comm= -t "$PANE_PTS" |tail -1 )

# tmux display-message "$PANE_ID $PANE_PTS $PANE_CMD $CMD_EXIST"
  # echo $PANE_ID
  # echo $PANE_PTS
  # echo $PANE_CMD
  # echo '----------'

# read  -p '...'


