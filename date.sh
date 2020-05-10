#!/bin/sh

clock() {
	date "+%b %d - %I:%M%p"
}

center() {
while true; do
	BAR_INPUT="%{c}$(clock)"
	echo $BAR_INPUT
	sleep 1
	done |\
	
	lemonbar -f "Victor Mono:size=10" -p -d -B '#282a36' -F '#f8f8f2' -g '135x30+900+5'
}

center
