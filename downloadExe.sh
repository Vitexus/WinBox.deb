#!/bin/bash
DWLURL=`curl -s https://mikrotik.com/download | sed 's/\"/\n/g'  | grep winbox.exe`
VERSION=`echo $DWLURL | awk -F/ '{print $6}'`
dch --upstream --distribution stable --newversion $VERSION "package update with winbox.exe $VERSION"
git commit -m "package update with winbox.exe $VERSION" debian/changelog
wget https:$DWLURL

