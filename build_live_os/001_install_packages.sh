#!/bin/sh

pacman -Syu --noconfirm --needed
pacman -Sy --noconfirm --needed  make  squashfs-tools  libisoburn  dosfstools  patch  lynx devtools git
pacman -Sc --noconfirm
