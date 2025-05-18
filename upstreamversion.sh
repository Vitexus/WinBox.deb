#!/bin/bash
DWLURL="https://mt.lv/winbox64"
VERSION=$(curl -s https://mikrotik.com/download | grep -oP 'routeros/winbox/\K[^/]+(?=/WinBox_Linux\.zip)')
echo $VERSION
