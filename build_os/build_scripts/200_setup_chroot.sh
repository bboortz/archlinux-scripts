#!/bin/bash
set -e
set -i
set -x

# *** settings ***
DISK_DEV=/dev/sda
HOST=vm1

echo "*** base configuration ***"
echo ${HOST} > /etc/hostname
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
vi /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale
vi /etc/vconsole.conf

#KEYMAP=de-latin1
#FONT=lat9w-16

mkinitcpio -p linux
passwd
pacman -S grub os-prober
pacman -S git docker
grub-install --recheck /dev/sdc
grub-mkconfig -o /boot/grub/grub.cfg
umount -R /mnt
reboot
