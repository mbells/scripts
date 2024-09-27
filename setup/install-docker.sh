#!/bin/bash
# Currently targeted at 24.04
# See https://snapcraft.io/install/docker/ubuntu

# Docker
sudo snap install docker

# Update groups for current user:
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo snap disable docker
sudo snap enable docker

# Test:
#service docker start  # part of main docs, needed for snap?
docker run hello-world
