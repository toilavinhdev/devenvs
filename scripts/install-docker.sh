#!/bin/sh

# Install prerequisite packages
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Add GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add to package manager
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install docker
sudo apt update
sudo apt install docker-ce

# Add current user to docker group (Execute docker without sudo)
sudo usermod -aG docker ${USER}

# Install docker compose plugins
# mkdir -p ~/.docker/cli-plugins/
# curl -SL https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
# chmod +x ~/.docker/cli-plugins/docker-compose
