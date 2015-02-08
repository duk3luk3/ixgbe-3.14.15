#!/bin/bash
# Argument (optional): 

apt-get -y update
apt-get -y install build-essential
apt-get -y install linux-headers-$(uname -r)

cd src
make
rmmod ixgbe
insmod ./ixgbe.ko $@
