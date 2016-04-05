echo "*** config network  ***"
cd /etc/netctl
cp examples/ethernet-dhcp .
sed -i -e "s/\(Interface=\).*/\1enp0s3/" ethernet-dhcp 
netctl enable ethernet-dhcp
netctl start ethernet-dhcp 
