#!/bin/dash
for arg in "$@"; do
    img_time="$(ls -l "$arg"|cut -d' ' -f6,8,9)"
    # echo $img_time
    convert -gravity south -pointsize 36 -draw "text 0,10 '$img_time'" $arg $arg
done