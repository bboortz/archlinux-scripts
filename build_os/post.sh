#!/bin/bash
set -e
set -i
set -x


. .config

CURDIR="$PWD"
for f in post_scripts/*.sh; do
	cd "$CURDIR"
	. "$f"
done

echo "POST SETUP SUCCESSFUL !!!"

