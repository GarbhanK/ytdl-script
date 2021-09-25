#!/bin/bash

# where do you want to save your videos?
videofolder="/home/garbhank/Videos/ytdl_vids"
audiofolder="/home/garbhank/Music/ytdl_music"
aardvark="/home/garbhank/Downloads/aardvark.txt"

printf "Garbhan's Youtube Download Script 💾 \n"
printf "\n"
echo "Gimme the link..."
read link
printf "\n"
youtube-dl -i --get-title --skip-download $link
printf "\n"
echo "These the ones you want? [Y/N]"
read ans 
if [[ $ans == "Y" ]]; then
    echo "Just the audio? [Y/N]"
    read isAudio
    if [[ $isAudio == "Y" ]]; then
        cd $audiofolder
        cat $aardvark
        printf "\n"
        youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --embed>
    elif [[ "$isAudio" == "N" ]]; then
        cd $videofolder
        cat $aardvark
        printf "\n"
        youtube-dl -f 18 -v -o '%(title)s.%(ext)s' --rm-cache-dir $link
    else
        echo "Bye bye :)"
    fi
fi

printf "\n"
echo "Cheers 🍻"
