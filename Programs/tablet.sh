#!/bin/sh

libinput-gestures-setup stop && libinput-gestures-setup start
xsetwacom set "Wacom Intuos Pro M (WL) Pen stylus"  MapToOutput 1920x1080+0+0 &
xsetwacom set "Wacom Intuos Pro M (WL) Pen eraser"  MapToOutput 1920x1080+0+0 &

xsetwacom set "Wacom Bamboo 16FG 4x5 Pen eraser"  MapToOutput 1920x1080+0+0 &
xsetwacom set "Wacom Bamboo 16FG 4x5 Pen stylus"  MapToOutput 1920x1080+0+0 &
xsetwacom set "Wacom Bamboo 16FG 4x5 Finger touch" Touch off &

