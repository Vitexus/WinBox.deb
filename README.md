![Project Logo](https://raw.githubusercontent.com/Vitexus/WinBox.deb/master/project-logo.png)
# winbox-deb-package

Debian Package for current MikroTik WinBox: a small program that allows users to control and monitor Mikrotik RouterOS

The package WinBox provide the interface (gui) to configure the Mikrotik OS router is  currently only running on the operating system
microsoft windows and mac with the ease we winbox in the Mikrotik OS router and the effect of the unix command shell that is Mikrotik OS
router.

The package use wine in order to run winbox.exe under linux.
Also provide the Menu Item 

![Screenshot](https://raw.githubusercontent.com/Vitexus/WinBox.deb/master/winbox3.4-deb.png "Screenshot")


 * WinBox Wiki: http://wiki.mikrotik.com/wiki/Manual:Winbox
 * Package Source Code: https://github.com/Vitexus/WinBox.deb
 * Build Command: `gbp buildpackage`


Installation
------------

If wine32 is missing, you should install it.
multiarch needs to be enabled first.  as root, please
execute:

    dpkg --add-architecture i386 && apt-get update


For Debian please use repo:

    wget -O - http://v.s.cz/info@vitexsoftware.cz.gpg.key|sudo apt-key add -
    echo deb http://v.s.cz/ stable main > /etc/apt/sources.list.d/vs.list
    apt update
    apt install winbox



See Also Redhat Package: https://github.com/ivoarch/winbox-rpm 
