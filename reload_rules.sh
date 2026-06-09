#!/usr/bin/env bash
##################################################
##################################################


# udev
sudo rm -f /etc/udev/hwdb.bin
sudo systemd-hwdb update
sudo udevadm control --reload-rules
sudo udevadm trigger

# systemctl
sudo systemctl daemon-reload
sudo sysctl --system
sudo systemctl restart polkit


