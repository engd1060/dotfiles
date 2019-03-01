#!/bin/bash


killall -q polybar

while pgrep -u $UID -x ploybar >/dev/null; do sleep 1; done

#--------------------------------------------------------------------
#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload cima &
#    MONITOR=$m polybar --reload baixo &
#  done
#else
#  polybar --reload cima &
#  sleep 1s
#  polybar --reload baixo &
#fi
#--------------------------------------------------------------------

polybar top &
polybar bottom &

echo "Bars launched..."
