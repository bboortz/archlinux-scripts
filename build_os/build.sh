#!/bin/bash
set -e
set -i
set -x


. .config

CURDIR="$PWD"
for f in build_scripts/*.sh; do
	cd "$CURDIR"
	. "$f"
done

echo "BUILD SUCCESSFUL !!!"
echo 
echo "Pleas reboot and run the ./post.sh script"

