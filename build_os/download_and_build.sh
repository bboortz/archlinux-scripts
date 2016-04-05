#!/bin/bash
# bash <( curl https://raw.githubusercontent.com/bboortz/archlinux-scripts/master/build_os/build.sh )
#

set -e
set -i
set -x


pacman -Sy git
git clone https://github.com/bboortz/archlinux-scripts.git
cd archlinux-scripts/build_os
./build.sh

