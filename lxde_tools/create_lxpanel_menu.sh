#!/bin/bash

set -i
set -e

DIR="$1"

cat <<-END > ~/.local/share/desktop-directories/${DIR}.directory
[Desktop Entry]
Comment=
Type=Directory
Name=$DIR
Icon=folder
END


cat <<-END >> ~/.config/menus/lxde-applications.menu
	<Menu>
              	<Name>${DIR}</Name>
		<Directory>${DIR}.directory</Directory>
		<Include>
                        <Filename>${DIR}.desktop</Filename>
		</Include>
		<Include>
                        <Filename>alacarte-made-2.desktop</Filename>
		</Include>
		<Layout>
                        <Merge type="menus"/>
			<Filename>alacarte-made-1.desktop</Filename>
			<Merge type="files"/>
        	</Layout>
        </Menu>
END
sed '$ d' ~/.config/menus/lxde-applications.menu
echo "</Menu>" >> ~/.config/menus/lxde-applications.menu




