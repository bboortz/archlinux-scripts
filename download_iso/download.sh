#!/bin/bash

set -i
set -e


# cleanup
if [ -f "sha1sums.txt" ]; then
	rm sha1sums.txt
fi

# retrieve version
CUR_VERSION=$( curl -s https://www.archlinux.org/download/ | awk '/Current/ { gsub(/<\/li>/, ""); print $3 }' )
echo "CURRENT VERSION: ${CUR_VERSION}"
FILE=archlinux-${CUR_VERSION}-dual.iso

# retrieve checksums
wget http://mirror.rackspace.com/archlinux/iso/latest/sha1sums.txt
CHKSUM=$( cat sha1sums.txt | grep $FILE )
echo $CHKSUM > sha1sums.txt

# check file
if [ -f "$FILE" ] ; then
	echo "file was already downloaded. checking file..."
	sha1sum -c sha1sums.txt && ( echo "File ok!"; exit ) || ( echo "File not ok!"; rm "$FILE" ) 
fi

# download file
wget http://mirror.rackspace.com/archlinux/iso/latest/${FILE}

# check file
if [ -f "$FILE" ] ; then
	echo "file downloaded. checking file..."
	sha1sum -c sha1sums.txt
fi
