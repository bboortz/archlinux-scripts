#!/bin/bash
# bash <( curl https://raw.githubusercontent.com/bboortz/archlinux-scripts/master/build_os/build.sh )
#


set -e
set -i
set -x


pacman -Sy --noconfirm unzip
wget https://github.com/bboortz/archlinux-scripts/archive/master.zip
unzip master.zip
cd archlinux-scripts/build_os
./build.sh

