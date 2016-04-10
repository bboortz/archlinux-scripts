#!/bin/bash

set -i
set -e

mkdir -p ${HOME}/.config/lxterminal/
cat <<-END > ${HOME}/.config/lxterminal/lxterminal.conf
[general]
fontname=Monospace 12
selchars=-A-Za-z0-9,./?%&#:_
scrollback=1000
bgcolor=#000000000000
bgalpha=65535
fgcolor=#aaaaaaaaaaaa
disallowbold=false
cursorblinks=false
cursorunderline=false
audiblebell=false
tabpos=top
hidescrollbar=false
hidemenubar=false
hideclosebutton=false
hidepointer=false
disablef10=false
disablealt=false

[shortcut]
new_window_accel=<CTRL><SHIFT>N
new_tab_accel=<CTRL><SHIFT>T
close_tab_accel=<CTRL><SHIFT>W
close_window_accel=<CTRL><SHIFT>Q
copy_accel=<CTRL><SHIFT>C
paste_accel=<CTRL><SHIFT>V
name_tab_accel=<CTRL><SHIFT>I
previous_tab_accel=<CTRL>Page_Up
next_tab_accel=<CTRL>Page_Down
move_tab_left_accel=<CTRL><SHIFT>Page_Up
move_tab_right_accel=<CTRL><SHIFT>Page_Down
END