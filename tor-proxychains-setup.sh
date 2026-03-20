#!/bin/bash

# Setup script for Tor and Proxychains

# Update package list
sudo apt update

# Install Tor
sudo apt install tor -y

# Install Proxychains
sudo apt install proxychains -y

# Configure Proxychains to use Tor
sudo sed -i 's/^#dynamic_chain/dynamic_chain/' /etc/proxychains.conf
sudo sed -i 's/^#strict_chain/strict_chain/' /etc/proxychains.conf
sudo sed -i 's/^#proxy_dns/proxy_dns/' /etc/proxychains.conf
sudo sed -i '$ a socks5 127.0.0.1 9050' /etc/proxychains.conf

# Start Tor service
sudo service tor start

echo "Tor and Proxychains setup completed successfully."]