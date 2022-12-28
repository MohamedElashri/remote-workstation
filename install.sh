#!/bin/bash

# Make the scripts executable
chmod +x scripts/*.sh

# Run the installation scripts
./scripts/install_docker
./scripts/install_portainer
./scripts/install_vscode
./scripts/run_vscode

