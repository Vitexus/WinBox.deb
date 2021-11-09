#!/bin/bash
DWLURL="https://mt.lv/winbox64"
VERSION=`curl -s https://mikrotik.com/download | awk  '/WinBox ([0-9\.]*) \(64-bit\)/{print $3}'`
echo $VERSION
