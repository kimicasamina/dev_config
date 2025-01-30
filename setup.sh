# Install VSCode extensions
echo "Installing vscode extensions..."
cat ./vscode_config/vscode_extensions.txt | xargs -n 1 code --install-extension

# Restore VSCode settings
echo "Restoring vscode settings..."
cp ./vscode_config/vscode_settings.json ~/.config/Code/User/settings.json
cp ./vscode_config/vscode_keybindings.json ~/.config/Code/User/keybindings.json
cp -r ./vscode_config/vscode_snippets/ ~/.config/Code/User/snippets/

# Install Linux packages
echo "Install linux packages..."
sudo apt update
sudo apt upgrade -y
sudo apt install -y $(cat package_list.txt)
cat ./linux_config/snap_list.txt | xargs -n 1 sudo snap install
sudo cp ./linux_config/sources.list.backup /etc/apt/sources.list

# Restore shell configurations
echo "Restoring shell configurations..."
cp ./shell_config/bashrc.backup ~/.bashrc
cp ./shell_config/zshrc.backup ~/.zshrc

echo "Setup complete!"