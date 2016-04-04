#!/bin/bash
set -e
set -i
set -x

echo "*** post boot setup  ***"
cd /etc/netctl; cp examples/ethernet-dhcp .; vi ethernet-dhcp
netctl enable ethernet-dhcp
netctl start ethernet-dhcp 
pacman -S xfce4 xfce4-goodies human-icon-theme --needed
pacman -S xorg-xdm xdm-archlinux xorg-server xorg-xinit xorg-utils xorg-server-utils --needed
pacman -S networkmanager gnome-keyring network-manager-applet nm-connection-editor
systemctl enable xdm-archlinux
adduser -m USER

# login as USER
cp /etc/X11/xinit/xinitrc ~/.xinitrc
vi ~/.xinitrc

#exec startxfce4
