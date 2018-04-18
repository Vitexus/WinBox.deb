#!/bin/bash
wget https:`curl -s https://mikrotik.com/download | sed 's/\"/\n/g'  | grep winbox.exe`


