#!/bin/bash
if ! [ -x "$(command -v docker)" ]; then
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io
    sudo systemctl status docker
    sudo usermod -aG docker ${USER}
else
   echo "Docker already installed."
fi
