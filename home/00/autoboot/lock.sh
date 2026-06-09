#!/usr/bin/env bash


echo 'set key'

for tty in /dev/tty{1..9}
do
  /usr/bin/setleds -D +num  < "$tty"
  /usr/bin/setleds -D -caps < "$tty"
done


