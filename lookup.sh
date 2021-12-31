#!/bin/bash
url=$(curl -k https://www.ldoceonline.com/dictionary/$1 2> /dev/null | grep https://www.ldoceonline.com/media/english/breProns/ | head -n 1 | sed 's/.*data-src-mp3="//g' | sed 's/?version.*//g')

if [ -n "$url" ]; then
    wget -O ./$1.mp3 $url 2> /dev/null
    echo $1 Pronunciation MP3 file is downloaded
    echo $PWD/$1.mp3
else
    echo Download failed
fi
