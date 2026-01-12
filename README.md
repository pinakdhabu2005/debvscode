# 🚀 VS Code Apt Installer for Ubuntu & Debian

A lightweight Bash script to quickly and securely install Visual Studio Code on Ubuntu, Debian, and their derivatives (like Linux Mint, Kali, etc.) using the official Microsoft `apt` repository.

## 📖 Overview

This script automates the quick and secure installation of Visual Studio Code. Manually setting up GPG keys and repository lists can be tedious. This script handles the entire process, ensuring you get the official version of VS Code that stays updated through your system's package manager (`sudo apt upgrade`). This method provides a more integrated experience compared to containerized solutions like Snap.

## 🛠️ How to Use (Installation)

To install Visual Studio Code with a single command, simply run one of the following in your terminal:

**For Ubuntu and derivatives:**
```bash
curl -fsSL https://is.gd/vscodeubuntu | sudo sh
```

**For Debian and derivatives:**
```bash
curl -fsSL https://is.gd/vscodedebian | sudo sh
```

Both commands download and execute the same script directly with `sudo` privileges. The script will handle all necessary steps automatically, including updating your package list, installing dependencies, importing the GPG key, adding the repository, and installing VS Code.

## ✨ Features

-   **Official Source**: The script adds Microsoft's official repository for security and stability.
-   **Universal Architecture**: Automatically configures the repository to support `amd64`, `arm64`, and `armhf` architectures.
-   **Automatic Updates**: Integrates seamlessly with `apt` so your editor stays current with regular system updates.
-   **One-Command Setup**: Simplifies the installation process – no need to manually download `.deb` files or configure repositories.
-   **Debian & Ubuntu Compatible**: The script is designed to work on both Debian-based systems and their derivatives.

## 🚀 Launching VS Code

Once the script finishes the installation, you can launch Visual Studio Code:

-   From your application menu.
-   By typing `code` in your terminal:
    ```bash
    code
    ```

## 🔍 Why use `apt` instead of `snap`?

While Ubuntu often suggests `snap install code`, the `apt` method (which this script uses) offers several advantages:

-   **Better Integration**: `apt` installations generally integrate better with the host system, accessing system fonts, keyrings, and terminal tools more reliably.
-   **Performance**: Many users report faster startup times and lower resource usage compared to containerized Snap versions.
-   **Automatic Updates**: Whenever you run `sudo apt update && sudo apt upgrade`, your editor is updated alongside your system's other packages, ensuring a consistent update experience.
-   **Traditional Package Management**: Aligns with the traditional package management philosophy of Debian/Ubuntu.

## 🛠️ Requirements

-   **Operating System**: Ubuntu 20.04+ or Debian 11+ (and their derivatives).
-   **Privileges**: `sudo` access is required to add repositories and install packages.
-   **Dependencies**: The script will automatically ensure `wget`, `gpg`, and `apt-transport-https` are installed if they are not already present.

## 📘 Troubleshooting for Debian

If you are on a fresh Debian install and encounter a `sudo: command not found` error when running the script, it means `sudo` is not yet configured for your user. You'll need to install it and add your user to the `sudo` group first.

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
4.  Then, you can proceed with running the `curl` command as described above.

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
