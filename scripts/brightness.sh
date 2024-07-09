#!/bin/sh

down() {
brightnessctl s 5%-
brightness=$(brightnessctl -m -d amdgpu_bl1 | awk -F, '{print substr($4, 0, length($4)-1)}')
dunstify -a "BRIGHTNESS" "Decreasing to $brightness%" -h int:value:"$brightness" -i display-brightness-symbolic -r 2593 -u normal
}

up() {
brightnessctl s +5%
brightness=$(brightnessctl -m -d amdgpu_bl1 | awk -F, '{print substr($4, 0, length($4)-1)}')
dunstify -a "BRIGHTNESS" "Increasing to $brightness%" -h int:value:"$brightness" -i display-brightness-symbolic -r 2593 -u normal
}

case "$1" in
  up) up;;
  down) down;;
esac
