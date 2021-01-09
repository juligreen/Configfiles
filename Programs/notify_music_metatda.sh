#!/bin/sh

title=$(playerctl metadata title)
album=$(playerctl metadata album)
artist=$(playerctl metadata artist)


notify-send "Title: $title
Album: $album
Artist: $artist"
