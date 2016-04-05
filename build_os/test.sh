#!/bin/bash
set -e
set -i
set -x


. .config

for f in test_scripts/*.sh; do
	. $f
done

echo "TEST SUCCESSFUL !!!"

