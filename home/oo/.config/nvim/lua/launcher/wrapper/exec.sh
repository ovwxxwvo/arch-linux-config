 #!/usr/bin/env bash


runner="$1"
file="$2"
server="$3"
cmd="$runner $file $server"


tmux -c "$cmd"


