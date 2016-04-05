#!/bin/bash
set -e
set -i
set -x


. .config

for f in build_scripts/*.sh; do
	. $f
done

echo "BUILD SUCCESSFUL !!!"
echo 
echo "Pleas reboot and run the ./post.sh script"

