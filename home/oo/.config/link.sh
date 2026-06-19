#!/usr/bin/env bash


script_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
echo $script_dir
echo ======== ======== ======== ========

# /home/config/home/oo/.config
cd "$script_dir" || exit

ln -sf  ./fcitx5   ../.local/share/
ln -sf  ./firefox  ../.mozilla/
ln -sf  ./kodi     ../

