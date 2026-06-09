#!/usr/bin/env bash


cd /home/config/home/oo/.local/share/
ln -sf  ../../.config/fcitx5  ./

cd /home/config/home/oo/.config/fcitx5/themes
ln -sf  ./misty.fcitx5/misty           ./
ln -sf  ./misty.fcitx5/misty-seagreen  ./
ln -sf  ./misty.fcitx5/misty-skyblue   ./
ln -sf  ./misty.fcitx5/misty-orange    ./
ln -sf  ./misty.fcitx5/misty-lemon     ./
ln -sf  ./misty.fcitx5/misty-grape     ./
ln -sf  ./misty.fcitx5/misty-peach     ./
ln -sf  ./misty.fcitx5/misty-jujube    ./
ln -sf  ./misty.fcitx5/misty-mulberry  ./


cd /home/config/home/oo/.config/fcitx5/themes/misty.fcitx5/misty-seagreen ; ln -sf  ../misty/prev.png  ./ ; ln -sf  ../misty/next.png  ./
cd /home/config/home/oo/.config/fcitx5/themes/misty.fcitx5/misty-skyblue  ; ln -sf  ../misty/prev.png  ./ ; ln -sf  ../misty/next.png  ./
cd /home/config/home/oo/.config/fcitx5/themes/misty.fcitx5/misty-orange   ; ln -sf  ../misty/prev.png  ./ ; ln -sf  ../misty/next.png  ./
cd /home/config/home/oo/.config/fcitx5/themes/misty.fcitx5/misty-lemon    ; ln -sf  ../misty/prev.png  ./ ; ln -sf  ../misty/next.png  ./
cd /home/config/home/oo/.config/fcitx5/themes/misty.fcitx5/misty-grape    ; ln -sf  ../misty/prev.png  ./ ; ln -sf  ../misty/next.png  ./
cd /home/config/home/oo/.config/fcitx5/themes/misty.fcitx5/misty-peach    ; ln -sf  ../misty/prev.png  ./ ; ln -sf  ../misty/next.png  ./
cd /home/config/home/oo/.config/fcitx5/themes/misty.fcitx5/misty-jujube   ; ln -sf  ../misty/prev.png  ./ ; ln -sf  ../misty/next.png  ./
cd /home/config/home/oo/.config/fcitx5/themes/misty.fcitx5/misty-mulberry ; ln -sf  ../misty/prev.png  ./ ; ln -sf  ../misty/next.png  ./

