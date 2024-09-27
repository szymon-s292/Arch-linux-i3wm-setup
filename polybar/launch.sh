#!/bin/sh

killall -q polybar

while pgrep -x polybar >/dev/null; do
    sleep 1;
done


polybar --reload primary -c ~/.config/polybar/primary &
polybar --reload secondary -c ~/.config/polybar/secondary &
