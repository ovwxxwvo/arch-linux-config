 #!/usr/bin/env bash


runner="$1"
file="$2"
server="$3"
cmd="$runner $file $server"


tmux splitw -h bash -c "
echo ========== ========== ========== ==========
echo $(pwd)
echo ========== ========== ========== ==========
echo

${cmd}

echo
echo ========== ========== ========== ==========
echo PRESS ENTER TO EXIT ...
echo ========== ========== ========== ==========
read -p ''
"


