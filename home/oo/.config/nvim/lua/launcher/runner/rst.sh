#!/usr/bin/env bash


file="$1"
dir="$PWD"

cargo_root=""
while [ "$dir" != "/" ]; do
  if [ -f "$dir/Cargo.toml" ]; then
    cargo_root="$dir"
    break
  fi
  dir=$(dirname "$dir")
done

if [ -n "$cargo_root" ]; then
  cd "$cargo_root" && cargo run
else
  rustc "$file" && ./"$(basename "$file" .rs)"
fi


