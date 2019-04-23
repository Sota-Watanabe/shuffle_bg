#!/bin/bash
thumbnails='/home/sota/Pictures/wallpaper/'
if [ "1" = $(pgrep -c $(basename $0 .sh)) ]; then
    while :
        do
        images=(`ls $thumbnails`)
        num_images=${#images[*]}
        img_path1=$thumbnails${images[$((RANDOM%num_images))]}
        img_path2=$thumbnails${images[$((RANDOM%num_images))]} 

        flatpak run org.gabmus.hydrapaper -c ${img_path1} ${img_path2} 
        sleep 30;
    done
fi

