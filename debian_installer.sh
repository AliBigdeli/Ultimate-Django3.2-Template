#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get -y install --reinstall make
sudo apt-get -y install curl

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -a -G docker $(whoami)
sudo service docker start
