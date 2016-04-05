# prepare install media
echo "*** setup basic settings ***"
loadkeys de
ntpdate -u -v $NTP_SERVER


echo "*** prepare target disk ***"
fdisk ${DISK_DEV}
mkfs.ext4 -L arch ${DISK_DEV}1
mkswap -L swap ${DISK_DEV}2
#mkfs.ext4 -L boot ${DISK_DEV}3
#mkfs.ext4 -L home ${DISK_DEV}4

echo "*** mount partitions ***"
mount ${DISK_DEV}1 /mnt
mkdir /mnt/boot
mkdir /mnt/home
#mount ${DISK_DEV}3 /mnt/boot
#mount ${DISK_DEV}4 /mnt/home

echo "*** enable swapping ***"
swapon -L swap

echo "*** setup pacman mirrors ***"
#vi /etc/pacman.d/mirrorlist

echo "*** install the base ***"
pacstrap /mnt base
#pacstrap /mnt base base-devel
genfstab -p /mnt >> /mnt/etc/fstab


