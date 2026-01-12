#!/bin/bash

# Update and install basic dependencies
sudo apt update
sudo apt install software-properties-common apt-transport-https wget gpg -y

# Import Microsoft GPG key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null

# Add official VS Code repository
echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# Update package list and install
sudo apt update
sudo apt install code -y

echo "VS Code is now installed on your Debian system!"
