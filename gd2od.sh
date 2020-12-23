#!/bin/bash
echo 'download rclone'
wget -O ~/rclone https://bpomg.herokuapp.com/e5/other/rclone.1.52.0/rclone/rclone 
echo 'chmod rclone'
chmod +x ~/rclone
echo 'download rclone.conf'
wget -O ~/.config/rclone/rclone.conf https://bpomg.herokuapp.com/e5/other/rclone.1.52.0/rclone.conf  

