echo "*** config xinitrc ***"
echo "exec startxlxde" > /home/${USER_DESKTOP}/.xinitrc
chown ${USER_DESKTOP}:${USER_DESKTOP} /home/${USER_DESKTOP}/.xinitrc
