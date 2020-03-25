#!/bin/bash

#Downlading and install PR puma-server
useradd appuser -s /bin/bash -m -G sudo
echo "appuser:strongpasswdbestpract" | sudo chpasswd
su -c 'cd /home/appuser && git clone -b monolith https://github.com/express42/reddit.git' appuser
cd /home/appuser/reddit/ && sudo bundle install
chown appuser:appuser -R /home/appuser
systemctl enable puma.service && systemctl start puma.service
