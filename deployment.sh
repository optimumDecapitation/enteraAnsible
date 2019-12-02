#!/bin/bash

sudo apt-get update
sudo apt-get install -y git
sudo apt install -y docker.io
sudo apt  install -y docker-compose 
sudo rm -rf dockerNginxSite/
sudo rm -rf enteraDocker/
git clone https://github.com/optimumDecapitation/dockerNginxSite.git 
git clone https://github.com/optimumDecapitation/enteraDocker.git 
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo bash enteraDocker/buildAndLaunchStack.sh 
sudo bash dockerNginxSite/provisionDeploy.sh 