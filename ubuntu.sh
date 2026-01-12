#!/bin/bash

# Update package index and install initial dependencies
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y

# Import the Microsoft GPG key
wget -qO- packages.microsoft.com | gpg --dearmor | sudo tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null

# Add the VS Code repository to apt sources
echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/packages.microsoft.gpg] packages.microsoft.com stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# Update package list and install VS Code
sudo apt update
sudo apt install code -y

echo "Installation complete! You can start VS Code by typing 'code' in your terminal."
