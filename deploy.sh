#!/bin/bash

#Downlading and install PR puma-server
cd /home/appuser && git clone -b monolith https://github.com/express42/reddit.git
cd reddit && sudo bundle install && sudo puma -d
