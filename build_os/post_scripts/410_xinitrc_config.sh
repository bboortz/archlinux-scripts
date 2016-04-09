echo "*** config xinitrc ***"
eval echo "exec startxlxde" > ~${USER_DESKTOP}/.xinitrc
chown ${USER_DESKTOP}:${USER_DESKTOP}/.xinitrc
