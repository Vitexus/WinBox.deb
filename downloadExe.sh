#!/bin/bash
DWLURL="https://mt.lv/winbox64"
VERSION=`curl -s https://mikrotik.com/download | awk  '/WinBox ([0-9\.]*) \(64-bit\)/{print $3}'`
dch --upstream --distribution stable --newversion $VERSION "package update with winbox.exe $VERSION"
git commit -m "package update with winbox.exe $VERSION" debian/changelog
wget $DWLURL

