#!/usr/bin/env bash


echo set color

for tty in /dev/tty{1..8}
do

echo -en  "\e]P0101010"  >  "$tty"  # 黑色

echo -en  "\e]P1a08050"  >  "$tty"  # 原红色
echo -en  "\e]P250a080"  >  "$tty"  # 原绿色
echo -en  "\e]P45080a0"  >  "$tty"  # 原蓝色
echo -en  "\e]P38050a0"  >  "$tty"  # 原黄色
echo -en  "\e]P680a050"  >  "$tty"  # 原青色
echo -en  "\e]P5a05080"  >  "$tty"  # 原洋色

echo -en  "\e]P7d0d0d0"  >  "$tty"  # 浅灰色
echo -en  "\e]P8303030"  >  "$tty"  # 深灰色

echo -en  "\e]P9a05050"  >  "$tty"  # 亮红色
echo -en  "\e]PA50a050"  >  "$tty"  # 亮绿色
echo -en  "\e]PC5050a0"  >  "$tty"  # 亮蓝色
echo -en  "\e]PBa0a050"  >  "$tty"  # 亮黄色
echo -en  "\e]PE50a0a0"  >  "$tty"  # 亮青色
echo -en  "\e]PDa050a0"  >  "$tty"  # 亮洋色

echo -en  "\e]PFe0e0e0"  >  "$tty"  # 白色

done


