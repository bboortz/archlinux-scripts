echo "*** install desktop environment  ***"
pacman -S xfce4 xfce4-goodies human-icon-theme --needed
pacman -S xorg-xdm xdm-archlinux xorg-server xorg-xinit xorg-utils xorg-server-utils --needed
pacman -S networkmanager gnome-keyring network-manager-applet nm-connection-editor
systemctl enable xdm-archlinux

