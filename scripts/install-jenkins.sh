#!/bin/sh

# Install Java JDK
sudo apt install fontconfig openjdk-17-jre

# Add GPG key
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add to package manager
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Install jenkins
sudo apt-get update
sudo apt-get install jenkins

# Add jenkins to docker group
usermod -aG docker jenkins
sudo systemctl restart jenkins.service
