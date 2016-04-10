echo "*** config xinitrc ***"

cat <<-END > /home/${USER_DESKTOP}/.xinitrc
export LC_ALL=en_US.UTF-8
export LANGUAGE=de_DE.UTF-8
export LANG=de_DE.UTF-8
exec startxlxde
END
chown ${USER_DESKTOP}:${USER_DESKTOP} /home/${USER_DESKTOP}/.xinitrc


cat <<-END > /etc/X11/xorg.conf.d/00-keyboard.conf
Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "de"
        Option "XkbModel" "pc105"
        Option "XkbVariant" "de_nodeadkeys"
        Option "XkbOptions" "grp:alt_shift_toggle"
EndSection
END

