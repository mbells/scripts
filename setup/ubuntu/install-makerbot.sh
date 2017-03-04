# Makerbot 3D printer
sudo apt-add-repository 'deb http://downloads.makerbot.com/makerware/ubuntu trusty main'
cd ~/Downloads
wget http://downloads.makerbot.com/makerware/ubuntu/dev@makerbot.com.gpg.key
sudo apt-key add dev@makerbot.com.gpg.key
sudo apt-get update
sudo apt-get install makerware

