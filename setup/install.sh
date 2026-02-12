#!/bin/bash
# Installs packages that are useful for a full dev environment.
# Currently targeted at 24.04

apt install vlc browser-plugin-vlc
#apt install cmake
apt install cups-pdf
sudo apt install curl
#apt install easystroke
sudo apt install glogg  # Syslog viewing tool, see http://glogg.bonnefon.org/
sudo apt install gparted
apt install inkscape
sudo apt install inotify-tools
#apt install libav-tools
apt install libavcodec-extra
sudo apt install meld
sudo apt install ncdu
sudo apt install net-tools
#sudo apt install pdftk-java
sudo apt install pipx
apt install ubuntu-restricted-extras
apt install virtualbox

#apt install wine

sudo snap install --classic chromium
sudo snap install --classic kate

sudo snap install cheese
sudo snap install filelight  # Like Disk Space Fan
sudo snap install gimp
sudo snap install irfanview
sudo snap install speedtest
sudo snap install vlc

# ---- Software development

sudo apt install google-perftools

#apt install octave

# VS Code
sudo snap install --classic code
ln -sf ~/devel/scripts/config/vscode/settings.json ~/.config/Code/User/settings.json
ln -sf ~/devel/scripts/config/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -sf ~/devel/scripts/config/vscode/prompts ~/.config/Code/User/prompts


# ---- Security

#sudo apt install nmap

sudo snap install nmap
sudo snap install ssh-audit  # https://github.com/jtesta/ssh-audit
sudo snap install testssl    # https://testssl.sh/
sudo snap install threat-dragon

# Wireshark
# Details: https://askubuntu.com/questions/700712/how-to-install-wireshark
sudo apt install wireshark

# GNOME
#apt install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0
#apt install gnome-system-monitor
#apt install gnome-tweak-tool


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

# ---- Maker

sudo apt install librecad

# OpenSCAD
sudo snap install openscad

# ---- AI and ML

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

# ---- Rust
sudo apt install build-essential
sudo apt install rustup
rustup default stable

# Balena Etcher
# Just use "Startup Disk Creator"

#curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash
#sudo apt update
#sudo apt install balena-etcher-electron

# Transmission torrent client
sudo apt-get install transmission-cli transmission-common transmission-daemon
