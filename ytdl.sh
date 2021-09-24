#!/bin/bash

# where do you want to save your videos?
folder="/home/garbhank/Videos/ytdl_vids" 

printf "Garbhan's Youtube Download Script 💾 \n"
echo "Gimme the link..."
read link
youtube-dl -i --get-filename --skip-download $link
echo "These the ones you want? [Y/N]"
read ans 
if [[ "$ans" == "Y" ]]; then
    cd $folder
    youtube-dl -q -f 18 -v $link
else
    echo "Bye bye :)"
fi

echo "Cheers 🍻"
