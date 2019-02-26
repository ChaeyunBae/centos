#!/bin/sh
if [[ EUID -e 0]]; then
./root/nvidia.sh
./root/code.sh
./root/djv.sh
./root/mpv.sh
./root/pip.sh
./root/devtools.sh
./root/handbrake.sh
./root/nohotcorner.sh
./root/redis.sh
./root/postgreSQL.sh
./root/clearcache.sh
./root/mongodb.sh
./root/openimageio.sh

else
#install $USER
./user/cmake.sh
./user/ffmpeg.sh
./user/gaffer.sh
./user/ocio_config.sh
./user/rmbeep.sh
./user/trans.sh
./user/utility.sh
