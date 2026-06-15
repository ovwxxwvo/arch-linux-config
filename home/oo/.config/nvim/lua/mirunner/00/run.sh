 #!/usr/bin/env bash


server="$2"
file="$1"
ext="${file##*.}"
run_dir="~/.config/nvim/lua/runner/runfile"
cmd=""

case "$ext" in
  sh|bsh)
    cmd="$run_dir/bsh.sh"
    ;;
  py|pyw)
    cmd="$run_dir/pyt.sh"
    ;;
  dsh)
    cmd="$run_dir/dsh.sh"
    ;;
  rs)
    cmd="$run_dir/rst.sh"
    ;;
  c|cpp)
    cmd="$run_dir/cpp.sh"
    ;;
  tmux|tmx)
    cmd="$run_dir/tmx.sh"
    ;;
  vim)
    cmd="$run_dir/vim.sh"
    ;;
  md)
    cmd="$run_dir/md.sh"
    ;;
  *)
    exit 1
    ;;
  esac


if [[ "$ext" =~ ^(tmux|tmx|vim|md)$ ]]; then
  tmux -c "$cmd $file $server"
  exit 0
  fi

tmux splitw -h bash -c "
echo ========== ========== ========== ==========
echo ${PWD} '|' ${file}
echo ========== ========== ========== ==========
echo

${cmd} ${file} ${server}

echo
echo ========== ========== ========== ==========
echo ========== ========== ========== ==========
echo PRESS ENTER TO EXIT ...
read -p ''
"


