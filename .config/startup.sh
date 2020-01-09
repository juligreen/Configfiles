#!/usr/bin/env sh

picom &
xbanish &

#Xresources
# xrdb ~/.Xresources &
dunst &
feh --randomize --bg-fill --no-xinerama ~/Pictures/* &
lightscreen -d &
sxhkd &
# VBoxClient-all &
sudo setxkbmap -layout us -variant altgr-intl &
# xmodmap ~/.Xmodmap &
riot-desktop &
sudo sh -c 'sysctl -w abi.vsyscall32=0' &
# rg --files ~/.doom.d/ | entr ~/.emacs.d/bin/doom refresh
# notify-send (.emacs.d/bin/doom doctor | tail -2 | sed 's/\x1b\[[0-9;]*m//g')
echo "started them all"

