# prepare install media
echo "*** setup basic settings ***"
loadkeys de
ntpdate -u -v $NTP_SERVER


echo "*** prepare target disk ***"
parted -s ${DISK_DEV} mklabel msdos
parted -s ${DISK_DEV} mkpart primary ext4 1MiB 100MiB
parted -s ${DISK_DEV} set 1 boot on
parted -s ${DISK_DEV} mkpart primary ext4 100MiB 4000MiB 
parted -s ${DISK_DEV} mkpart primary linux-swap 4000MiB 4500MiB
parted -s ${DISK_DEV} mkpart primary ext4 1500MiB 100%

mkfs.ext4 -L boot ${DISK_DEV}1
mkfs.ext4 -L arch ${DISK_DEV}2
mkfs.ext4 -L arch ${DISK_DEV}4
mkswap -L swap ${DISK_DEV}3


echo "*** mount partitions ***"
mount ${DISK_DEV}2 /mnt
mkdir /mnt/boot
mkdir /mnt/home
mount ${DISK_DEV}1 /mnt/boot
mount ${DISK_DEV}4 /mnt/home


echo "*** enable swapping ***"
swapon -L swap


echo "*** setup pacman mirrors ***"
#vi /etc/pacman.d/mirrorlist


echo "*** install the base ***"
pacstrap /mnt base 
genfstab -p /mnt >> /mnt/etc/fstab


