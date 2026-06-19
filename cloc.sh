#!/usr/bin/env bash


# root_dir=$(dirname "${BASH_SOURCE[0]}")
root_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
user=$(whoami)

cloc \
  --fullpath \
  --not-match-d="${root_dir}/home/${user}/.config/00" \
  --not-match-d="${root_dir}/home/${user}/.config/kodi" \
  --not-match-d="${root_dir}/home/${user}/.config/mpv/script" \
  --exclude-ext="txt" \
  --force-lang-def="${root_dir}/cloc.conf" \
  ${root_dir}/home/00  ${root_dir}/home/oo/.config
  # ${root_dir} ${root_dir}/home/oo/.config

# cloc \
#   ${root_dir}
  # --ignored=/dev/stdout \
  # --by-file --include-lang="shell script" \
  # --by-file --include-lang="shell like script" \
  # --by-file --include-lang="linux config" \
  # --by-file --include-lang="lua script" \
  # --by-file --include-lang="vim script" \
  # --by-file --include-lang="toml and yaml" \
  # --by-file --include-lang="html and xml" \
  # --by-file --include-lang="css" \
  # --by-file --include-lang="js" \
  # --by-file --include-lang="system service" \
  # --force-lang-def="${script_dir}/cloc.conf" \
