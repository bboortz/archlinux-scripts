
echo "*** step into a chroot and configure"
cat <<-END | arch-chroot $MOUNT_POINT

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
pacman -S --noconfirm --needed grub os-prober
pacman -S --noconfirm --needed git docker
cd /root
git clone https://github.com/bboortz/archlinux-scripts
grub-install --recheck $DISK_DEV
grub-mkconfig -o /boot/grub/grub.cfg

END
