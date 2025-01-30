My VSCode development configurations, settings, installed extensions, and Linux environment settings, installed packages, and variables

## Restore VSCode Settings and Extensions

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

## Run the script

```bash
./setup.sh

```

## Fresh install

# Web Development Environment Setup

This script sets up a comprehensive web development environment on a Linux-based system, installing and configuring the following:

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

## How to Use

1. Clone this repository or download the script.
2. Run `chmod +x fresh_install.sh` to make the script executable.
3. Run the script with `./fresh_install.sh`.
