#!/usr/bin/env bash
##################################################
# Be careful about what you are trying to do.
# This script will replace the system config files.
# For example, the files in folder "/etc" & "/usr" .
##################################################

cd "$(dirname "$0")" || exit 1
pwd

USR="$USER"
GRP="$USR"
# OPT='-vcr --progress --no-owner --no-group --no-perms --exclude=".git" --exclude=".venv" --dry-run'
OPT='-vcrl --progress --no-owner --no-group --no-perms --exclude=".git" --exclude=".venv"'
SRC='./'
DST='/'
DIRS=(
  'home/00'
  'uefi'
  'etc'
  'usr'
  )
SRCS=()
DSTS=()

get_path() {
  for dir in "${DIRS[@]}"; do
    SRCS+=("${SRC}${dir}/")
    DSTS+=("${DST}${dir}/")
    done
  echo ==================== set var ===================
    echo "SRC  : $SRC"
    echo "DST  : $DST"
    echo "SRCS : ${#SRCS[@]} ${SRCS[@]}"
    echo "DSTS : ${#DSTS[@]} ${DSTS[@]}"
  }

chmod_config() {
  for s in "${SRCS[@]}" ;do
    echo ==================== chown $s ===========
    echo "$s"
    # sudo chown -R "root:root" "$s"
    sudo chown -R "$USR:$GRP" "$s"
    echo ==================== chmod $s ===========
    # sudo chmod -R 755 $s
    sudo find "$s" -type d -exec chmod 755 {} \;
    sudo find "$s" -type f -exec chmod 644 {} \;
    sudo find "$s" -type f \( -name "*.sh" -o -name "*.py" -o -name "*.bsh" -o -name "*.dsh" \) -exec chmod 754 {} \;
      # dirt_path=$( find $s -type  d )
      # file_path=$( find $s -type f )
      # exec_path=$( find $s -type f |grep -E "/sway$" )
      # sudo chmod 755 $dirt_path
      # sudo chmod 644 $file_path
      # sudo chmod 755 $exec_path
    sudo chmod 755 "$s"
    ls -al "$s"
    echo -------------------- --------------------
    done
  }

rsync_config() {
  # sudo rsync $OPT $SRC $DST
  echo ==================== rsync config ==============
  for i in "${!SRCS[@]}"; do
    src="${SRCS[$i]}"
    dst="${DSTS[$i]}"
    echo ==================== rsync config $dst ===========
    echo "rsync $OPT $src $dst"
    sudo rsync $OPT "$src" "$dst"
    done
  }

get_path
# chmod_config
rsync_config


