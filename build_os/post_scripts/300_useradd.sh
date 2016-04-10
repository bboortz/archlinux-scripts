echo "*** add user ***"
# create with: openssl passwd -crypt PASS
useradd -p nZWhhqZO4U5YE -G wheel -m $USER_ADMIN
useradd -p nZWhhqZO4U5YE -G docker -m $USER_DESKTOP
