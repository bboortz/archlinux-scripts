echo "*** install packages  ***"
pacman -Sy --noconfirm --needed ntp docker git

systemctl enable docker

