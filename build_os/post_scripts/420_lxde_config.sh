echo "*** config lxde ***"
mkdir -p /home/${USER_DESKTOP}/.config/openbox
cp /etc/xdg/openbox/menu.xml /etc/xdg/openbox/rc.xml /etc/xdg/openbox/autostart /home/${USER_DESKTOP}/.config/openbox

cat <<-END >> /home/${USER_DESKTOP}/.config/openbox/autostart
setxkbmap -model pc104 -layout de -option grp:switch,grp:alt_shift_toggle,grp_led:scroll
END

chown -R ${USER_DESKTOP}:${USER_DESKTOP} /home/${USER_DESKTOP}/.config
