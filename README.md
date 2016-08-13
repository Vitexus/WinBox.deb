# winbox-deb-package

    Debian Package for current MikroTik WinBox: a small program that allows users to control and monitor Mikrotik RouterOS


The package WinBox provide the interface (gui) to configure the Mikrotik OS router is  currently only running on the operating system
microsoft windows and mac  with the ease we winbox in the Mikrotik OS router and the effect of the unix command shell that is Mikrotik OS
router.


Source Code: https://github.com/Vitexus/WinBox.deb
WinBox Wiki: http://wiki.mikrotik.com/wiki/Manual:Winbox

Build Command: `gbp buildpackage`

Installation
------------

For Debian please use repo:

    wget -O - http://v.s.cz/info@vitexsoftware.cz.gpg.key|sudo apt-key add -
    echo deb http://v.s.cz/ stable main > /etc/apt/sources.list.d/ease.list
    aptitude update
    aptitude install ease-framework
