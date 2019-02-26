#!/bin/sh
#CentOS7.6 에서 사용할 소프트웨어를  자동으로 설치하는 스크립트

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
#gcc6.x를 이용해서 빌드한다.
scl enable devtoolset-6 ./user/cmake.sh
scl enable devtoolset-6 ./user/openexr.sh
scl enable devtoolset-6 ./user/opencolorio.sh
scl enable devtoolset-6 ./user/alembic.sh
./rmbeep.sh
fi
