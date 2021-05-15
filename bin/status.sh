#!/bin/bash
hanweeks=("日" "月" "火" "水" "木" "金" "土")
while true; do
	xsetroot -name "[ enp3s0 | $(ip -4 addr show enp3s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}') ][ $(date +"%H:%M %y/%m/%d (${hanweeks[$(date +%w)]})") ]"
	sleep 60
done
