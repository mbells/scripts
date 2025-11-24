#!/bin/bash
# Currently targeted at 24.04
# See https://snapcraft.io/install/docker/ubuntu

# Docker with apt:
sudo apt install docker.io
sudo apt install docker-compose-v2
sudo apt install docker-buildx

sudo systemctl enable docker
sudo systemctl start docker

# Update groups for current user:
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker

sudo usermod -aG docker ${USER}

# Docker with snap alternative:
# This is not compatible with docker-compose or dev-containers...
sudo snap install docker
sudo snap disable docker
sudo snap enable docker

# Test:
sudo systemctl status docker
docker run hello-world

# Other tooling

# Tool for exploring a docker image and layer contents.
docker pull docker.io/wagoodman/dive
