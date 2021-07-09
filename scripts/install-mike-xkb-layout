#!/usr/bin/env bash
set -x

key_path='org.gnome.desktop.input-sources xkb-options'
gsettings get $key_path
gsettings set $key_path "['lv3:caps_switch']"
#gsettings set $key_path "['altwin:swap_alt_win', 'lv3:caps_switch']"

key_path='org.gnome.desktop.input-sources sources'
gsettings get $key_path
gsettings set $key_path "[('xkb', 'mike'), ('xkb', 'us')]"

xkb_path=/usr/share/X11/xkb
xkb_local_path=~/.local/share/X11/xkb

sudo ln -sf $xkb_local_path/symbols/mike $xkb_path/symbols/mike

sudo patch $xkb_path/rules/base.lst $xkb_local_path/xkb-lst.patch
sudo patch $xkb_path/rules/base.xml $xkb_local_path/xkb-xml.patch

sudo patch $xkb_path/rules/evdev.lst $xkb_local_path/xkb-lst.patch
sudo patch $xkb_path/rules/evdev.xml $xkb_local_path/xkb-xml.patch
