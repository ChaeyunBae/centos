#!/bin/sh
cd /tmp
rm /tmp/cmake*
wget https://github.com/Kitware/CMake/releases/download/v3.13.3/cmake-3.13.3.tar.gz
if [ ! -d "home/$USER/app" ];then
	mkdir /home/$USER/app
fi

tar -zxvf cmake-3.13.3.tar.gz -C /home/$USER/app
mkdir cmake-3.13.3
cd /home/$USER/app/cmake-3.13.3_src
scl enavle devtoolset-6 bash
