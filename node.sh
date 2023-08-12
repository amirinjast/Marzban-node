#!/bin/bash

# Update packages
apt-get update

# Install Docker
curl -fsSL https://get.docker.com | sh

# Clone Marzban-node repo
git clone https://github.com/Gozargah/Marzban-node

# Change to repo directory
cd Marzban-node

# Start with docker-compose 
docker compose up -d

# Print SSL cert
cat /var/lib/marzban-node/ssl_cert.pem
