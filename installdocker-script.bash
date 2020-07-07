!#/bin/bash

# Install curl
apt install -y curl 

#Get the docker Install script using curl
curl -fsSL https://get.docker.com -o get-docker.sh

# As you are inside directory make your file executable
chmod +x get-docker.sh

# Install docker by running the script
sudo ./get-docker.sh

# Check if docker is installed
sudo docker version

# Make docker non-Root user available
sudo usermod -aG docker $USER 

# Activate the docker Engine
sudo docker engine activate 

