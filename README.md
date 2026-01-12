# 🚀 VS Code Apt Installer for Ubuntu & Debian

A lightweight Bash script to quickly and securely install Visual Studio Code on Ubuntu, Debian, and their derivatives (like Linux Mint, Kali, etc.) using the official Microsoft `apt` repository.

## 📖 Overview

Manually setting up GPG keys and repository lists can be tedious and prone to errors. This script automates the entire process, ensuring you get the official version of VS Code that stays updated through your system's package manager (`sudo apt upgrade`). This method provides a more integrated experience compared to containerized solutions like Snap.

## ✨ Features

-   **Official Source**: Adds Microsoft's official repository for security and stability.
-   **Universal Architecture**: Automatically supports `amd64`, `arm64`, and `armhf` architectures.
-   **Automatic Updates**: Integrates seamlessly with `apt` so your editor stays current with regular system updates.
-   **One-Command Setup**: No need to manually download `.deb` files or configure repositories.
-   **Debian & Ubuntu Compatible**: Works on both Debian-based systems and their derivatives.

## 🛠️ Installation & Usage

Follow these steps to get VS Code installed on your system using this script.

### 1. Clone the repository (or create the file directly)

```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
cd YOUR_REPO_NAME
```

Alternatively, you can just create a file named `install_vscode.sh` and paste the script content below.

### 2. The Installation Script

Copy the following content into a file named `install_vscode.sh`:

```bash
#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Starting Visual Studio Code installation..."

# 1. Update package index and install dependencies
echo "1/4: Updating system and installing necessary dependencies..."
sudo apt update
sudo apt install -y software-properties-common apt-transport-https wget gpg

# 2. Import the Microsoft GPG key for security
# This key allows Ubuntu/Debian to verify that the software you are downloading is authentic.
echo "2/4: Importing Microsoft GPG key..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null

# 3. Add the official VS Code repository to apt sources
# This tells your system where to find the VS Code packages.
echo "3/4: Adding VS Code repository to your system's sources..."
echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

# 4. Install Visual Studio Code
echo "4/4: Refreshing package list and installing Visual Studio Code..."
sudo apt update
sudo apt install -y code

echo "✅ Visual Studio Code installation complete!"
echo "You can launch VS Code by typing 'code' in your terminal or by finding it in your application menu."
```

### 3. Make the script executable

Navigate to the directory where you saved `install_vscode.sh` and run:

```bash
chmod +x install_vscode.sh
```

### 4. Run the script

```bash
./install_vscode.sh
```

The script will handle all necessary steps automatically.

## 🚀 Launching VS Code

Once the installation finishes, you can launch VS Code:

-   From your application menu.
-   By typing `code` in your terminal:
    ```bash
    code
    ```

## 🔍 Why use `apt` instead of `snap`?

While Ubuntu often suggests `snap install code`, using the `apt` method provided here offers several advantages:

-   **Better Integration**: `apt` installations generally integrate better with the host system, accessing system fonts, keyrings, and terminal tools more reliably.
-   **Performance**: Many users report faster startup times and lower resource usage compared to containerized Snap versions.
-   **Automatic Updates**: Whenever you run `sudo apt update && sudo apt upgrade`, your editor is updated alongside your system's other packages, ensuring a consistent update experience.
-   **Traditional Package Management**: Aligns with the traditional package management philosophy of Debian/Ubuntu.

## 🛠️ Requirements

-   **Operating System**: Ubuntu 20.04+ or Debian 11+ (and their derivatives).
-   **Privileges**: `sudo` access is required to add repositories and install packages.
-   **Dependencies**: The script will automatically ensure `wget`, `gpg`, and `apt-transport-https` are installed.

## 📘 Troubleshooting for Debian

If you are on a fresh Debian install and encounter a `sudo: command not found` error, it means `sudo` is not yet configured for your user. You'll need to install it and add your user to the `sudo` group first.

1.  Switch to the root user:
    ```bash
    su -
    ```
2.  Install `sudo` and add your user to the `sudo` group:
    ```bash
    apt update && apt install sudo -y
    usermod -aG sudo your_username
    ```
    (Replace `your_username` with your actual username.)
3.  Log out and log back in for the changes to take effect.
4.  Then, you can run the `install_vscode.sh` script as described above.

For more details, visit the [Official VS Code Linux Documentation](https://code.visualstudio.com/docs/setup/linux).

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

---

**💡 Pro Tip:** After installing, explore the extensive [official VS Code Documentation](https://code.visualstudio.com/docs) to set up your environment for Python, Node.js, C++, or any other language!
