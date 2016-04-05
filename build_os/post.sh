#!/bin/bash
set -e
set -i
set -x


. .config

for f in post_scripts/*.sh; do
	. $f
done

echo "POST SETUP SUCCESSFUL !!!"

