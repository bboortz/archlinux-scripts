#!/bin/bash
set -e
set -i
set -x

# prepare install media


echo "*** prepare target disk ***"
fdisk /dev/sdb
mkfs.ext4 /dev/sdb1 

echo "*** setup basic settings ***"
loadkeys de
ping -c 3  github.com || exit 1
vi /etc/pacman.d/mirrorlist
mount /dev/sbc3 /mnt
mkdir /mnt/boot
mount /dev/sbc1 /mnt/boot
pacstrap /mnt base base-devel
genfstab -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt
echo HOST > /etc/hostname
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
