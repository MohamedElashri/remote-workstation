#!/bin/bash


sudo ln -s /home/$USER /home/coder
mkdir -p ~/vscode ~/git ~/project

#!/bin/bash

echo "Enter your git name:"
read user_name
echo "Enter your git email:"
read user_email

curl -sL https://deb.nodesource.com/setup_12.x \
  | sudo -E bash -

sudo apt update

sudo apt install -y \
  nodejs \
  python \
  python-pip \
  python-openssl \
  libssl-dev \
  fonts-firacode

sudo pip install docker-compose

# to get the correct docker group number is not the defult use the following 
# getent group docker | awk -F: '{printf "The GID for group %s is %d\n", $1, $3}'
# to get the number
sudo groupadd docker -g 119 
sudo usermod -aG docker coder

git config --global user.name "$user_name"
git config --global user.email "$user_email"
git config --global push.default simple
git config --global credential.helper store

sudo npm install --global prettier

sudo chown -R coder. ~/git
