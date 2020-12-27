#!/bin/sh
set -eu

image=~/Documents/ocr.png
output=~/Documents/ocr

sleep 0.3
maim --select ${image}
mogrify -modulate 100,0 -resize 400% ${image}
invert=false

while getopts ":i" opt; do
  case $opt in
    i)
      invert=true
      ;;
  esac
done

if [ "$invert" = true ]; then
  convert ${image} -channel RGB -negate ${image}
else
  convert ${image} -channel RGB ${image}
fi

text=$(tesseract -l jpn --psm 13 ${image} ${output} && < ${output}.txt sed 's/ //g' | tr -d '\n' | sed 's/.$//')
echo "$text" | xclip -selection clipboard
translated_text=$(trans -brief ja:en "$text")
pronounciation=$(echo "$text" | iconv -f utf8 -t shift-jis | kakasi -JH -KH -Ea -s | iconv -f shift-jis -t utf8)
notify-send "$text
$pronounciation
$translated_text"
echo "$text" | trans -speak -brief ja:en

