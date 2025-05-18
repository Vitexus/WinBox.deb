![Project Logo](project-logo.png?raw=true)

# winbox-deb-package

Debian Package for current MikroTik WinBox: a small program that allows users to control and monitor Mikrotik RouterOS

The package WinBox provides a native Linux interface (GUI) to configure MikroTik RouterOS devices.

The package now installs the native Linux WinBox binary provided by MikroTik. Wine is no longer required.

Also provides a menu item for easy access.

![Screenshot](winbox4.0-deb.png?raw=true "Screenshot")

* WinBox Wiki: <http://wiki.mikrotik.com/wiki/Manual:Winbox>
* Package Source Code: <https://github.com/Vitexus/WinBox.deb>
* Build Command: `gbp buildpackage`

Installation
------------

Simply install the package. No Wine or multiarch setup is required.

For Debian please use repo:

    echo "deb http://repo.vitexsoftware.com $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/vitexsoftware.list
    sudo wget -O /etc/apt/trusted.gpg.d/vitexsoftware.gpg http://repo.vitexsoftware.com/keyring.gpg
    sudo apt update
    sudo apt install winbox

See Also Redhat Package: <https://github.com/ivoarch/winbox-rpm>
