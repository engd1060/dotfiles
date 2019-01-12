#!/bin/bash

# Finaliza todas barras ativas
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Inicia as barras (trocar os nomes)
polybar nomedabarra &
#polybar nomedabarra2 &