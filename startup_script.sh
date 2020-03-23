#!/bin/bash

#Install package
sudo apt update && sudo apt install -y ruby-full ruby-bundler build-essential

#Instlling MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
sudo apt update
sudo apt install -y mongodb-org

#Start mongodb service
sudo systemctl start mongod
sudo systemctl enable mongod

#Downloading remote PR
cd /home/appuser && git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install && sudo puma -d
