
if [ ! -z "$( pacman -Qdtq )" ]; then
	pacman -Rsn $( pacman -Qdtq )
fi

pacman -Rsn --noconfirm perl
