#!/bin/bash

# Update package index
sudo yum update -y

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Set up Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo                                                                                                                                                    

# Install Docker
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start Docker service
sudo systemctl start docker

# Enable Docker service to start on boot
sudo systemctl enable docker

# Output Docker version
docker --version

echo "Docker has been installed successfully."