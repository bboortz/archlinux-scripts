#!/bin/sh

mkdir -p livecd
cp -r /usr/share/archiso/configs/releng/* livecd/

sed -i -e 's/i686//g' livecd/build.sh
