#!/bin/bash
echo "### docker run aria2-pro ###"
docker run -d --name aria2-pro  --restart unless-stopped --log-opt max-size=1m --network host -e PUID=$UID -e PGID=$GID  -e RPC_SECRET=1887415157 -e RPC_PORT=6800 -e LISTEN_PORT=6888  -e SPECIAL_MODE=rclone -v ~/aria2-config:/config -v ~/aria2-downloads:/downloads p3terx/aria2-pro
echo "### get rclone.conf ###"
wget -O ~/aria2-config/rclone.conf https://raw.githubusercontent.com/baipiaowang123/baipiaoking/master/rclone.conf
echo "### get tele-conf.json###"
wget -O ~/.tele-aria2-conf.json https://raw.githubusercontent.com/baipiaowang123/baipiaoking/master/.tele-aria2-conf.json
echo "### docker run telebot###"
docker run -d  --name tele-aria2  --restart unless-stopped  --log-opt max-size=1m  --network host    -v ~/.tele-aria2-od-conf.json:/config.json    p3terx/tele-aria2:0.2.2
echo "### docker restart aria2###"
docker restart aria2-pro
echo "### restart complete###"
