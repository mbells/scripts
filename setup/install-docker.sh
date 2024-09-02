#!/bin/bash
# Currently targeted at 18.04

# Docker
sudo snap install docker

sudo groupadd docker
sudo usermod -aG docker ${USER}

