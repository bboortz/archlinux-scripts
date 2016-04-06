#!/bin/bash
set -e
set -i
set -x


. .config

CURDIR="$PWD"
for f in test_scripts/*.sh; do
	cd "$CURDIR"
	. "$f"
done

echo "TEST SUCCESSFUL !!!"

