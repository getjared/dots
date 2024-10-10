#!/bin/sh

# kill wm session with Ctrl + Alt + Backspace
setxkbmap -option terminate:ctrl_alt_bksp

xrdb -merge $HOME/.Xresources
xset b off
xset r rate 250 25
xsetroot -cursor_name left_ptr

# startups
sxhkd & # keyboard shortcut daemon

# walls
#gifw /home/jared/projects/gifwall/walls/lotide.gif stretch &
feh --bg-scale wallpapers/hydrac.jpg &

# start rude
exec rude
