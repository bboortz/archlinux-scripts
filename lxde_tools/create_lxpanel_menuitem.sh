#!/bin/bash

set -i
set -e

APP="$1"
CMD="$2"

cat <<-END > ~/.local/share/applications/${APP}.desktop
[Desktop Entry]
Comment=
Terminal=false
Name=$APP
Exec=$CMD
Type=Application
Icon=gnome-panel-launcher
END
