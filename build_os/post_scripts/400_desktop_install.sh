echo "*** install desktop environment  ***"
pacman -Sy --noconfirm --needed xorg-xdm xdm-archlinux xorg-server xorg-xinit xorg-utils xorg-server-utils 
pacman -Sy --noconfirm --needed xf86-video-vesa
pacman -Sy --noconfirm --needed lxde openbox
#pacman -Sy --noconfirm --needed xfce4 xfce4-goodies human-icon-theme 
#pacman -Sy --noconfirm --needed networkmanager gnome-keyring network-manager-applet nm-connection-editor
#systemctl enable lxdm.service
#systemctl enable xdm-archlinux

systemctl enable lxdm

