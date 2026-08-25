#!/usr/bin/env bash


sudo rm -R  /etc/pacman.d/gnupg/
sudo rm -rf /var/lib/pacman/db.lck

sudo pacman -S archlinux-keyring
sudo pacman -S archlinuxcn-keyring
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate archlinuxcn


