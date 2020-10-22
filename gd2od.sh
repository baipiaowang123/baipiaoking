wget -q https://bpomg.herokuapp.com/e5/other/rclone.1.52.0/rclone/rclone
echo 'download rclone'
chmod +x ./rclone
echo 'chmod rclone'
wget -q https://bpomg.herokuapp.com/e5/other/rclone.1.52.0/rclone.conf  -P ~/.config/rclone/
