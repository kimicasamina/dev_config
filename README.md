# Web Development Environment Setup

This repository contains a script to set up a comprehensive web development environment on a Linux-based system. The setup includes installing and configuring essential tools, databases, development languages, and more.

---

## Prerequisites

Before running the setup script, ensure that you have:

- A Linux-based system (Ubuntu/Debian recommended).
- Git installed.
- Access to `sudo` privileges for installing packages.

---

## Restore VSCode Settings and Extensions

### 1. Clone the Repository

Start by cloning the repository that contains the configuration files.

1. Clone the Repo

```bash
git clone <repo_url>
cd <repo-folder>
```

2. Restore VSCode Settings

```bash
cp ./vscode_config/vscode_settings.json ~/.config/Code/User/settings.json
cp ./vscode_config/vscode_keybindings.json ~/.config/Code/User/keybindings.json
cp -r ./vscode_config/vscode_snippets/ ~/.config/Code/User/snippets/
```

3. Reinstall Extensions

```bash
cat ./vscode_config/vscode_extensions.txt | xargs -n 1 code --install-extension
```

## Restore Linux Packages and Configurations

1. Reinstall Packages

```bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y $(cat ./linux_config/package_list.txt)
```

2. Restore Snap packages

```bash
cat ./linux_config/snap_list.txt | xargs -n 1 sudo snap install
```

3. Restore APT Sources

```bash
sudo cp ./linux_config/sources.list.backup /etc/apt/sources.list
```

## Restore Shell Configurations

```bash
cp ./shell_config/bashrc.backup ~/.bashrc
cp ./shell_config/zshrc.backup ~/.zshrc
```

## Run the setup.sh Script

The setup.sh script is designed to automatically restore Linux environment, including packages, configurations, and VSCode settings. Follow these steps to execute the script:

1. Make the Script Executable
   Before running the script, ensure it is executable. In your terminal, run the following command:

```bash
chmod +x setup.sh
```

2. Execute the Setup Script
   To restore all Linux packages, configurations, VSCode settings, extensions, keybindings, and shell configurations, run the script:

```bash
./setup.sh
```

The script will:

Restore Linux packages from the package_list.txt file.
Reinstall Snap packages from the snap_list.txt file.
Restore APT repositories from sources.list.backup.
Restore VSCode settings, keybindings, and snippets.
Reinstall VSCode extensions listed in vscode_extensions.txt.
Restore shell configurations from bashrc.backup and zshrc.backup.

## Fresh Install: Web Development Environment Setup

This script sets up a comprehensive web development environment by installing and configuring the following tools:

## Tools Installed

- **VSCode**: A powerful code editor with configured settings, extensions, and snippets.
- **Node.js & NPM**: Essential for frontend development and global tools like Webpack, Babel, ESLint, Prettier.
- **Databases**: MongoDB, MySQL, PostgreSQL for SQL and NoSQL development.
- **Python & Django**: For backend web development with Python and Django.
- **PHP & Laravel**: For backend development with PHP and Laravel.
- **Global Dev Tools**: Webpack, Babel, ESLint, Prettier, Sequelize CLI.

## Setup Details

1. VSCode is installed with pre-configured settings, snippets, and extensions from `./vscode_config`.
2. Databases (MongoDB, MySQL, PostgreSQL) are installed and configured using settings from `.env`.
3. SSH key is generated if not already present for GitHub or GitLab integration.
4. Shell configurations are restored from `./shell_config`.
5. .env file used for database configuration variables.

## How to Use the Fresh Install Script

1. Clone the Repository or Download the Script
   Clone this repository or download the setup script and configuration files:

```bash
git clone <repo_url>
cd <repo-folder>
```

2. Make the Script Executable
   Make the fresh_install.sh script executable:

```bash
chmod +x fresh_install.sh
```

3. Run the Script
   Execute the script to install and configure the development environment:

```bash
./fresh_install.sh
```

## Additional Notes

Ensure that the .env file is properly configured with the necessary database credentials and other environment-specific variables before running the script.

1. Create a .env file on your root folder and replace these variables

```bash
MYSQL_DATABASE=
MYSQL_USER=
MYSQL_PASSWORD=
POSTGRES_DATABASE=
POSTGRES_USER=
POSTGRES_PASSWORD=
GITHUB_EMAIL=
```
