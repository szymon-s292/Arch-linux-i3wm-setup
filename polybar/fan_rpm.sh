#!/bin/bash

fan_speed=$(sensors | grep 'fan1' | awk '{print $2}')

if [[ -z "$fan_speed" ]]; then
    echo "0"
else
    echo "$fan_speed"
fi

