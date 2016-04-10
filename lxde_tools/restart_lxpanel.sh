#!/bin/bash

set -i
set -e

killall lxpanel
find ~/.cache/menus -name '*' -type f -delete
nohup lxpanel -p LXDE > /dev/null &
