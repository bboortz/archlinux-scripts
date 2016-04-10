echo "*** config xinitrc ***"

cat <<-END > /home/${USER_DESKTOP}/.xinitrc
export LC_ALL=de_DE.UTF-8
export LANGUAGE=de_DE.UTF-8
export LANG=de_DE.UTF-8
exec startxlxde
END

chown ${USER_DESKTOP}:${USER_DESKTOP} /home/${USER_DESKTOP}/.xinitrc
