#!/bin/sh
# Note, we are using "echo 3", but it is not recommended in production instead use "echo 1"
if [[ $EUID -ne 0]]; then
	echo "This script must be run as Root" 1>&2
	exit 1
fi

echo "echo 3 > /proc/sys/vm/drop_caches"

sync; echo 1 > /proc/sys/vm/drop_caches
sync; echo 2 > /proc/sys/vm/drop_caches
sync; echo 3 > /proc/sys/vm/drop_caches 
