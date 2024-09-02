#!/bin/bash

# Dropbox
# https://ubuntuhandbook.org/index.php/2024/04/install-dropbox-ubuntu/
# Wrong:
# sudo apt install nautilus-dropbox

# https://www.dropbox.com/downloading
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2024.04.17_amd64.deb
sudo apt install -f ./dropbox_2024.04.17_amd64.deb


# https://www.digitalocean.com/community/tutorials/how-to-install-dropbox-client-as-a-service-on-ubuntu-14-04
# https://www.dropboxforum.com/t5/Desktop-client-builds/bd-p/101003016
#sudo mkdir -p /opt/dropbox
#sudo tar xzfv dropbox-linux-x86_64.tar.gz --strip 1 -C /opt/dropbox
#sudo curl -o /etc/init.d/dropbox https://gist.githubusercontent.com/thisismitch/d0133d91452585ae2adc/raw/699e7909bdae922201b8069fde3011bbf2062048/dropbox
#sudo chmod +x /etc/init.d/dropbox
#echo 'DROPBOX_USERS="mbells"' | sudo tee --append /etc/default/dropbox
#sudo update-rc.d dropbox defaults
