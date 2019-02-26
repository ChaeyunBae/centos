#!/bin/sh
yum -y remove DJV
wget https://sourceforge.net/projects/djv/files/djv-stable/1.2.5/DJV-1.2.5-1.x86_64.rpm
cd /tmp
yum -y install DJV-1.2.5-1.x86_64.rpm
rm DJV-1.2.5-1.x86_64.rpm*
