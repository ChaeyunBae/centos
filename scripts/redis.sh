#!/bin/sh
yum -y install redis
systemctl start redis
systemctl enable redis
firewall-cmd --zone=public --add-port=6379/tcp --permanent
firewall-cmd --reload

