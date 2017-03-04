#!/bin/bash
# Installs packages that are useful for a full dev environment.
# Currently targeted at 14.04

apt-get install vlc browser-plugin-vlc
apt-get install chromium-browser
apt-get install cmake
apt-get install cups-pdf
apt-get install easystroke
apt-get install firefox
apt-get install git
apt-get install gitk
apt-get install indicator-multiload
apt-get install inkscape
apt-get install kate
apt-get install libav-tools
apt-get install libavcodec-extra-54
apt-get install libavformat-extra-54
apt-get install meld
apt-get install nautilus-dropbox
apt-get install octave
apt-get install python-matplotli
apt-get install python-uniconvertor
apt-get install ubuntu-restricted-extras
apt-get install virtualbox
apt-get install wine
apt-get install xtitle

# Arduino
apt-get install arduino
apt-get install avr-libc
apt-get install gcc-avr
# UECIDE??

# OpenCV
apt-get install libopencv-dev
apt-get install pythonopencv

# Vagrant
apt-get install vagrant
vagrant plugin install vagrant-vbguest

# OpenSCAD
add-apt-repository ppa:openscad/releases
apt-get update
apt-get install openscad

# libdvdcss
#deb http://download.videolan.org/pub/debian/stable/ /
#wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
sudo apt-get install libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh

# Speech
sudo apt-get install espeak

# ROS
#sudo apt-get install ros-indigo-husky-desktop

