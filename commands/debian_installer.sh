#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get -y install --reinstall make
sudo apt-get -y install curl
sudo apt-get install git

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

sudo systemctl restart network-manager
sudo systemctl restart docker
