#!/bin/bash


docker pull portainer/portainer

docker volume create portainer_data

docker run -d --name portainer_gui \
  --restart always \
  -e "CAP_HOST_MANAGEMENT=1" \
  -p 81:9000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  -v /:/host \
  portainer/portainer

echo "You can access portainer UI from the url <http://ipserver:81> in your browser."  