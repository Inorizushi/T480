#!/bin/sh

battery0() {
        cat /sys/class/power_supply/BAT0/capacity
}

battery1() {
        cat /sys/class/power_supply/BAT1/capacity
}


center() {
while true; do
        BAR_INPUT="%{c}$(battery0)%  - $(battery1)%"
        echo $BAR_INPUT
        sleep 1
        done |\

        lemonbar -f "Victor Mono:size=10" -p -d -B '#282a36' -F '#f8f8f2' -g '90x30+1820+5'
}

center
