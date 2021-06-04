#!/bin/sh
set -ex
archive='gitui-linux-musl.tar.gz'
url='https://github.com/extrawurst/gitui/releases/download/v0.13.0/gitui-linux-musl.tar.gz'

cd /tmp
mkdir ~/.bin
wget -O "$archive" "$url"
tar xvf "$archive"
mv gitui ~/.bin
