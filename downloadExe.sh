#!/bin/bash
wget `curl -s http://www.mikrotik.com/download | sed 's/\"/\n/g'  | grep winbox.exe`


