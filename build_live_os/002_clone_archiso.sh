#!/bin/sh

mkdir -p work 
cd work

if [ ! -d archiso ]; then
	git clone git://projects.archlinux.org/archiso.git
fi
cd archiso
git pull
make install
