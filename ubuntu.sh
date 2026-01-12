#!/bin/bash
# Update package index and install initial dependencies
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y

# Import the Microsoft GPG key
if wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null; then
    echo "GPG key imported successfully."
else
    echo "Failed to import GPG key."
    exit 1
fi

# Add the VS Code repository to apt sources
if echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list; then
    echo "VS Code repository added successfully."
else
    echo "Failed to add VS Code repository."
    exit 1
fi

# Update package list and install VS Code
if sudo apt update && sudo apt install code -y; then
    echo "Visual Studio Code installed successfully! You can start VS Code by typing 'code' in your terminal."
else
    echo "Failed to install Visual Studio Code."
    exit 1
fi
