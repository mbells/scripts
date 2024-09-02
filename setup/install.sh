#!/bin/bash
# Installs packages that are useful for a full dev environment.
# Currently targeted at 18.04

apt install vlc browser-plugin-vlc
#apt install cmake
apt install cups-pdf
sudo apt install curl
apt install easystroke
apt install gimp
apt install gparted
apt install inkscape
sudo apt install kate
#apt install libav-tools
apt install libavcodec-extra
sudo apt install librecad
sudo apt install meld
apt install net-tools
apt install nmap
apt install octave
apt install ubuntu-restricted-extras
apt install virtualbox
#apt install wine
#apt install xtitle

sudo snap install --classic chromium
sudo snap install --classic code
sudo snap install --classic skype



# GNOME
apt install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0
apt install gnome-system-monitor
apt install gnome-tweak-tool


# Arduino - must download for recent version
#apt install arduino
#apt install avr-libc
#apt install gcc-avr
# UECIDE??

# OpenCV
apt install libopencv-dev
apt install python3-opencv

# Vagrant
apt install vagrant
vagrant plugin install vagrant-vbguest

# OpenSCAD
add-apt-repository ppa:openscad/releases
apt update
apt install openscad

# libdvdcss
#deb http://download.videolan.org/pub/debian/stable/ /
#wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
sudo apt install libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh

# Speech
sudo apt install espeak

# ---- Python
# uv package manager, replaces pip https://astral.sh/blog/uv
# See https://levelup.gitconnected.com/forget-pip-poetry-virtualenv-this-rust-powered-tool-is-the-only-python-package-manager-youll-3baf7cb30306
curl -LsSf https://astral.sh/uv/install.sh | sh

apt install python3-gpg
#apt install python-uniconvertor # what is this for?
apt install python3-matplotlib
apt install python3-nltk
apt install python3-numpy
apt install python3-pytest

# UGS (Universal G-Code Sender)
apt install default-jre

