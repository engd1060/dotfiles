#!/bin/bash


killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload cima &
    MONITOR=$m polybar --reload baixo &
  done
else
  polybar --reload cima &
  sleep 1s
  polybar --reload baixo &
fi