#!/bin/bash

ln -s ~/devel/scripts/config/inputrc ~/.inputrc
ln -s ~/devel/scripts/config/bashrc ~/.bashrc

git config --global push.default simple
gsettings set com.canonical.indicator.datetime time-format 24-hour
