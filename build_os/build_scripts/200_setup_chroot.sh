
echo "*** step into a chroot and configure"
cat <<-END | arch-chroot /mnt

echo "*** base configuration ***"
echo ${HOST} > /etc/hostname
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale

cat <<-PASTE > /etc/vconsole.conf
KEYMAP=de-latin1
FONT=lat9w-16
PASTE

mkinitcpio -p linux
#passwd
pacman -S grub os-prober
pacman -S git docker
grub-install --recheck /dev/sdc
grub-mkconfig -o /boot/grub/grub.cfg

END
