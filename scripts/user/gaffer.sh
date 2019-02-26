#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi
cd /home/$USER/app
wget https://github.com/GafferHQ/gaffer/releases/download/0.53.1.0/gaffer-0.53.1.0-linux.tar.gz
tar -zxvf gaffer-0.53.1.0-linux.tar.gz
