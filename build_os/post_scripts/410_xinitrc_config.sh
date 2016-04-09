echo "*** config xinitrc ***"
eval echo "exec startxfce4" > ~${USER_DESKTOP}/.xinitrc
chown ${USER_DESKTOP}:${USER_DESKTOP}/.xinitrc
