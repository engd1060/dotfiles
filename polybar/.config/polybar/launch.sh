#!/bin/bash
# github.com/mamutal91

wal -c -i $HOME/.local/share/wallpapers/wallpaper.jpg

killall -q polybar

#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload cima &
#    MONITOR=$m polybar --reload baixo &
#  done
#else
  polybar --reload cima &
  sleep 1s
  polybar --reload baixo &
#fi