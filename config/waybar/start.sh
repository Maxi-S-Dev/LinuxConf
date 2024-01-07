#! /bin/bash

killall waybar

rm ~/.config/waybar/config

cp ~/.config/waybar/config.json ~/.config/waybar/config

waybar
