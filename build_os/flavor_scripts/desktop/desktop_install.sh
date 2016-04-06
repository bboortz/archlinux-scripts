echo "*** install desktop environment  ***"
pacman -Sy --noconfirm xfce4 xfce4-goodies human-icon-theme --needed
pacman -Sy --noconfirm xorg-xdm xdm-archlinux xorg-server xorg-xinit xorg-utils xorg-server-utils --needed
pacman -Sy --noconfirm networkmanager gnome-keyring network-manager-applet nm-connection-editor
pacman -Sy --noconfirm networkmanager gnome-keyring network-manager-applet nm-connection-editor
pacman -Sy --noconfirm xf86-video-vesa
systemctl enable xdm-archlinux

