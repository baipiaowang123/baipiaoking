#!/bin/bash
echo 'download rclone'
wget -qO ~/rclone https://bpomg.herokuapp.com/e5/other/rclone.1.52.0/rclone/rclone 
echo 'chmod rclone'
chmod +x ~/rclone
echo 'download rclone.conf'
mkdir -p ~/.config/rclone
wget -qO ~/.config/rclone/rclone.conf https://bpomg.herokuapp.com/e5/other/rclone.1.52.0/rclone.conf  

~/rclone copy --transfers 16  --cache-chunk-size 64M "gd11:剧集/纪录片" jilupian-mv1: 
