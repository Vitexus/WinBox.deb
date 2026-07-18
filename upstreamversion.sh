#!/bin/bash
curl -sL https://mikrotik.com/download/winbox/ | grep -oP 'routeros/winbox/\K[0-9][^/"]*(?=/WinBox_Linux\.zip)' | head -1
